<?php
function sendErrorEmail($zone, $errorMsg) {
    $to = "phu@expressinmusic.com";
    $subject = "Error in Prayer Time Script for Zone $zone";
    $message = "Error message: $errorMsg";
    $headers = "From: sithukyawtintgugu@gmail.com" . "\r\n" .
               "Reply-To: phu@expressinmusic.com" . "\r\n" .
               "X-Mailer: PHP/" . phpversion();
    mail($to, $subject, $message, $headers);
}
?>
