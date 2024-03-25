<?php
include 'configs/db_connect.php';
function generateVoiceovers($boxId, $prayerZone, $prayerTimeDate, $prayerTimeSeq, $prayerTime) {
    global $conn;

    // Check if the entry already exists
    $checkQuery = "SELECT * FROM songs WHERE box_id = $boxId AND prayer_zone = '$prayerZone' AND prayer_time_date = '$prayerTimeDate' AND prayer_time_seq = $prayerTimeSeq";
    $checkResult = $conn->query($checkQuery);

    if ($checkResult->num_rows > 0) {
        echo "Entry already exists. Skipping insertion.";
        return;
    }

    // Insert generated voiceover into the database
    $sql = "INSERT INTO songs (song_title, box_id, prayer_zone, prayer_time_date, prayer_time_seq, prayer_time)
            VALUES ('Time to pray', $boxId, '$prayerZone', '$prayerTimeDate', $prayerTimeSeq, '$prayerTime')";

    if ($conn->query($sql) === TRUE) {
        echo "Entry inserted successfully.";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

generateVoiceovers(101, "WLY01", "2024-03-09", 1, "06:14");
?>
