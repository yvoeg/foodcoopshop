<?php
/**
 * FoodCoopShop - The open source software for your foodcoop
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @since         FoodCoopShop 2.0.0
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 * @author        Mario Rothauer <office@foodcoopshop.com>
 * @copyright     Copyright (c) Mario Rothauer, http://www.rothauer-it.com
 * @link          https://www.foodcoopshop.com
 */
use Cake\Core\Configure;

if (Configure::read('appDb.FCS_TIMEBASED_CURRENCY_ENABLED') && $appAuth->user('timebased_currency_enabled')) {
    echo '<'.$wrapperTag.' class="'.$class.'">';
        $titleForOverlay =
            'Anteil in €: <span class="money">' . $this->Html->formatAsDecimal($money).'</span><br />' .
            'Anteil in ' . Configure::read('appDb.FCS_TIMEBASED_CURRENCY_NAME') . ': <span class="time">' . $this->Html->formatAsDecimal($time) . '</span>' . Configure::read('appDb.FCS_TIMEBASED_CURRENCY_SHORTCODE')
        ;
        echo '<span title="'.h($titleForOverlay).'">' . $labelPrefix . ' in ' . Configure::read('appDb.FCS_TIMEBASED_CURRENCY_NAME') . '</span>';
    echo '</'.$wrapperTag.'>';
}

?>