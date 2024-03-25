<?php
function playVoiceover($prayer, $dayOffset = 0) {
    $days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
    $currentTime = new DateTime('now', new DateTimeZone('Asia/Kuala_Lumpur'));
    $currentTime->modify("+$dayOffset day");
    $currentDayOfWeek = (int)$currentTime->format('w'); 
    $voiceoverDay = $days[$currentDayOfWeek];
    echo "Playing voiceover for $prayer prayer time on $voiceoverDay.\n";
}
?>
