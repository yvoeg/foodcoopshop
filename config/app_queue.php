<?php
/**
 * FoodCoopShop - The open source software for your foodcoop
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @since         FoodCoopShop 3.2.0
 * @license       https://opensource.org/licenses/mit-license.php MIT License
 * @author        Mario Rothauer <office@foodcoopshop.com>
 * @copyright     Copyright (c) Mario Rothauer, https://www.rothauer-it.com
 * @link          https://www.foodcoopshop.com
 */

$connection = 'default';
$workermaxruntime = 60 * 10;
$sleeptime = 20;
if (php_sapi_name() == 'cli' && $_SERVER['argv'][0] && preg_match('/phpunit/', $_SERVER['argv'][0])) {
    $workermaxruntime = 2;
    $sleeptime = 0;
    $connection = 'test';
}

return [
    'Queue' => [
        'maxworkers' => 1,
        'defaultworkerretries' => 2,
        'workermaxruntime' => $workermaxruntime,
        'sleeptime' => $sleeptime,
        'connection' => $connection,
    ],
];

?>