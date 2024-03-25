<?php
function isPrayerTime($prayer, $currentHour, $currentMinute) {
    $prayerHourMinute = explode(':', $prayer);
    $prayerHour = (int)$prayerHourMinute[0];
    $prayerMinute = (int)$prayerHourMinute[1];

    return ($currentHour === $prayerHour && $currentMinute === $prayerMinute);
}
?>
