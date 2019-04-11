<?php
namespace Admin\Controller;
use Cake\Datasource\Exception\RecordNotFoundException;
use Cake\Core\Configure;
use Cake\ORM\TableRegistry;

/**
* FoodCoopShop - The open source software for your foodcoop
*
* Licensed under The MIT License
* For full copyright and license information, please see the LICENSE.txt
* Redistributions of files must retain the above copyright notice.
*
* @since         FoodCoopShop 2.5.0
* @license       http://www.opensource.org/licenses/mit-license.php MIT License
* @author        Mario Rothauer <office@foodcoopshop.com>
* @copyright     Copyright (c) Mario Rothauer, https://www.rothauer-it.com
* @link          https://www.foodcoopshop.com
*/

class StatisticsController extends AdminAppController
{

    public $manufacturerId;

    public function isAuthorized($user)
    {
        switch ($this->getRequest()->getParam('action')) {
            case 'index':
                return $this->AppAuth->isSuperadmin() || $this->AppAuth->isAdmin();
                break;
            case 'myIndex':
                return $this->AppAuth->isManufacturer();
                break;
            default:
                return $this->AppAuth->isManufacturer();
                break;
        }
    }

    /**
     * $this->manufacturerId needs to be set in calling method
     * @return int
     */
    private function getManufacturerId()
    {
        $manufacturerId = '';
        if (!empty($this->getRequest()->getQuery('manufacturerId'))) {
            $manufacturerId = $this->getRequest()->getQuery('manufacturerId');
        } if ($this->manufacturerId > 0) {
            $manufacturerId = $this->manufacturerId;
        }
        return $manufacturerId;
    }

    public function myIndex()
    {
        $this->manufacturerId = $this->AppAuth->getManufacturerId();
        $this->index();
        $this->render('index');
    }

    public function index()
    {
        $manufacturerId = $this->getManufacturerId();

        $this->Manufacturer = TableRegistry::getTableLocator()->get('Manufacturers');
        $this->set('manufacturersForDropdown', $this->Manufacturer->getForDropdown());
        $this->set('manufacturerId', $manufacturerId);

        if ($manufacturerId == '') {
            $this->set('title_for_layout', __d('admin', 'Turnover_statistics'));
            return;
        }

        $manufacturer = $this->Manufacturer->find('all', [
            'conditions' => [
                'Manufacturers.id_manufacturer' => $manufacturerId
            ]
        ])->first();
        $this->set('manufacturer', $manufacturer);
        
        $this->set('title_for_layout', __d('admin', 'Turnover_statistics') . ' ' . $manufacturer->name);
        
        $this->OrderDetail = TableRegistry::getTableLocator()->get('OrderDetails');
        $monthlySumProducts = $this->OrderDetail->getMonthlySumProductByManufacturer($manufacturerId);
        if (empty($monthlySumProducts->toArray())) {
            $this->set('xAxisData', []);
            return;
        }
        
        $monthsAndYear = Configure::read('app.timeHelper')->getAllMonthsUntilThisYear(date('Y'), 2014);
        
        $monthsWithTurnoverMonthAndYear = $monthlySumProducts->extract('MonthAndYear')->toArray();
        $monthsWithTurnoverSumTotalPaid = $monthlySumProducts->extract('SumTotalPaid')->toArray();
        
        $xAxisData = array_values($monthsAndYear);
        $yAxisData = [];
        
        foreach($monthsAndYear as $monthKey => $monthString) {
            $foundIndex = array_search($monthKey, $monthsWithTurnoverMonthAndYear);
            if ($foundIndex !== false) {
                $yAxisData[] = $monthsWithTurnoverSumTotalPaid[$foundIndex];
            } else {
                $yAxisData[] = 0;
            }
        }
        
        $firstIndexWithValue = 0;
        foreach($yAxisData as $index => $y) {
            if ($y > 0) {
                $firstIndexWithValue = $index;
                break;
            }
        }
        
        $lastIndexWithValue = 0;
        $reversedYAxisDate = array_reverse($yAxisData);
        foreach($reversedYAxisDate as $index => $y) {
            if ($y > 0) {
                $lastIndexWithValue = $index;
                break;
            }
        }
        
        $xAxisData = array_splice($xAxisData, $firstIndexWithValue, $lastIndexWithValue * -1);
        $yAxisData = array_splice($yAxisData, $firstIndexWithValue, $lastIndexWithValue * -1);
        
        $this->set('xAxisData', $xAxisData);
        $this->set('yAxisData', $yAxisData);
        $this->set('totalTurnover', array_sum($monthsWithTurnoverSumTotalPaid));
        $this->set('averageTurnover', array_sum($monthsWithTurnoverSumTotalPaid) / count($monthsWithTurnoverMonthAndYear));
        
    }
}
