<?php
    $conn = new mysqli("localhost", "root", "", "school");
    $kode_materi = isset($_GET['kode_materi'])?$_GET['kode_materi']:'';

    $data = mysqli_query($conn, "SELECT * FROM materi WHERE kode_materi='$kode_materi'");
    $data = mysqli_fetch_array($data, MYSQLI_ASSOC);

    echo json_encode($data);
?>
