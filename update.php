<?php
    $conn = new mysqli("localhost", "root", "", "school");
    $kode_materi = isset($_POST['kode_materi'])?$_POST['kode_materi']:'';
    $title = isset($_POST['title'])?$_POST['title']:'';
    $subtitle = isset($_POST['subtitle'])?$_POST['subtitle']:'';

    if(!empty($id) && !empty($title) && !empty($content)){
        $result = mysqli_query($conn, "UPDATE note_app SET title='$title', subtitle='$subtitle' WHERE kode_materi='$kode_materi'");
        if ($result) {
            echo json_encode([
                "message" => "Data Berhasil Diubah"
            ]);
        }else{
            echo json_encode([
                "message" => "Data Gagal Diubah"
            ]);
        }
    }else {
        echo json_encode([
            "message" => "Data Wajib Diisi"
        ]);
    }
?>
