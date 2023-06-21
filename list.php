<?php
    $conn = new mysqli("localhost", "root", "", "school");
    $data = mysqli_query($conn, "SELECT * FROM materi");
    
    $data = mysqli_fetch_all($data, MYSQLI_ASSOC);

    echo json_encode($data);
?>
