<?php
    include "koneksi.php";

    $idpenyakit =$_GET['idpenyakit'];

    $query = "DELETE FROM penyakit WHERE idpenyakit='$idpenyakit'";
    $result = mysqli_query($connect, $query);

    if($result){
        // echo "Data berhasil dihapus";
        echo '
        <script type="text/JavaScript"> 
            alert("Data Berhasil Dihapus!");
            document.location.href="penyakitCRUD.php"
        </script>';
?>
    <a href="penyakitCRUD.php">Lihat Data</a>
<?php
    }
    else{
        // echo "Data gagal dihapus".mysqli_error($connect);
        echo '
        <script type="text/JavaScript"> 
            alert("Upss! Data Gagal Dihapus!");
            document.location.href="penyakitCRUD.php"
        </script>';
    }
?>