<?php
include 'configs/db_connect.php';
include 'voiceover_management.php';
include 'functions/fetchPrayerTimes.php';
include 'functions/isPrayerTime.php';
include 'functions/playVoiceover.php';
include 'functions/sendErrorEmail.php';

$zone = "JHR04";
$prayerTimes = fetchPrayerTimes($zone);

var_dump($prayerTimes);

if ($prayerTimes !== null) {
    for ($i = 0; $i < 7; $i++) {
        $currentTime = new DateTime('now', new DateTimeZone('Asia/Kuala_Lumpur'));
        $currentTime->modify("+$i day");
        $currentHour = (int)$currentTime->format('H');
        $currentMinute = (int)$currentTime->format('i');
        
        foreach ($prayerTimes['prayerTime'] as $prayer) {
            if (isPrayerTime($prayer['fajr'], $currentHour, $currentMinute)) {
                playVoiceover('Fajr', $i);
            } elseif (isPrayerTime($prayer['dhuhr'], $currentHour, $currentMinute)) {
                playVoiceover('Dhuhr', $i);
            } elseif (isPrayerTime($prayer['asr'], $currentHour, $currentMinute)) {
                playVoiceover('Asr', $i);
            } elseif (isPrayerTime($prayer['maghrib'], $currentHour, $currentMinute)) {
                playVoiceover('Maghrib', $i);
            } elseif (isPrayerTime($prayer['isha'], $currentHour, $currentMinute)) {
                playVoiceover('Isha', $i);
            }
        }
    }
}
?>
