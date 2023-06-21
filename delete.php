<?php
    $conn = new mysqli("localhost", "root", "", "school");
    $kode_materi = isset($_POST['kode_materi'])?$_POST['kode_materi']:'';

    if(!empty($id)){
        $result = mysqli_query($conn, "DELETE FROM materi WHERE kode_materi='$kode_materi'");
        if ($result) {
            echo json_encode([
                "message" => "Data Berhasil Dihapus"
            ]);
        }else{
            echo json_encode([
                "message" => "Data Gagal Dihapus"
            ]);
        }
    }else {
        echo json_encode([
            "message" => "Data tidak ada"
        ]);
    }
?>
