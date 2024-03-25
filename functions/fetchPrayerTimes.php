<?php
function fetchPrayerTimes($zone) {    
    $url = "https://www.e-solat.gov.my/index.php?r=esolatApi/TakwimSolat&period=week&zone=$zone";
    $data = @file_get_contents($url);

    if ($data === false) {
        $errorMsg = "Failed to fetch prayer times from the server for zone $zone.";
        sendErrorEmail($zone, $errorMsg);
        return null; 
    }

    $prayerTimes = json_decode($data, true);

    if ($prayerTimes === null || !isset($prayerTimes['prayerTime'])) {
        $errorMsg = "Failed to decode or invalid prayer times data for zone $zone.";
        sendErrorEmail($zone, $errorMsg);
        return null; 
    }

    return $prayerTimes;
}
?>
