<?php
    $conn = new mysqli("localhost", "root", "", "school");
    $title = isset($_POST['title'])?$_POST['title']:'';
    $subtitle = isset($_POST['subtitle'])?$_POST['subtitle']:'';

    if(!empty($title) && !empty($content)){
        $result = mysqli_query($conn, "INSERT INTO materi SET title='$title', subtitle='$subtitle'");
        if ($result) {
            echo json_encode([
                "message" => "Data Berhasil Disimpan"
            ]);
        }else{
            echo json_encode([
                "message" => "Data Gagal Disimpan"
            ]);
        }
    }else {
        echo json_encode([
            "message" => "Data Wajib Diisi"
        ]);
    }
?>
