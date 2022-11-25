<?php
    include "koneksi.php";

    $idresep =$_GET['idresep'];

    $query = "DELETE FROM resep WHERE idresep='$idresep'";
    $result = mysqli_query($connect, $query);

    if($result){
        // echo "Data berhasil dihapus";
        echo '
        <script type="text/JavaScript"> 
            alert("Data Berhasil Dihapus!");
            document.location.href="resepCRUD.php"
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
            document.location.href="resepCRUD.php"
        </script>';
    }
?>