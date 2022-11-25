<?php
    include "koneksi.php";

    $idrekomendasi =$_GET['idrekomendasi'];

    $query = "DELETE FROM menurekomendasi WHERE idrekomendasi='$idrekomendasi'";
    $result = mysqli_query($connect, $query);

    if($result){
        // echo "Data berhasil dihapus";
        echo '
        <script type="text/JavaScript"> 
            alert("Data Berhasil Dihapus!");
            document.location.href="rekomendasiCRUD.php"
        </script>';
?>
    <a href="rekomendasiCRUD.php">Lihat Data</a>
<?php
    }
    else{
        // echo "Data gagal dihapus".mysqli_error($connect);
        echo '
        <script type="text/JavaScript"> 
            alert("Upss! Data Gagal Dihapus!");
            document.location.href="rekomendasiCRUD.php"
        </script>';
    }
?>