<?php
    include "koneksi.php";

    $idpantangan =$_GET['idpantangan'];

    $query = "DELETE FROM menupantangan WHERE idpantangan='$idpantangan'";
    $result = mysqli_query($connect, $query);

    if($result){
        // echo "Data berhasil dihapus";
        echo '
        <script type="text/JavaScript"> 
            alert("Data Berhasil Dihapus!");
            document.location.href="pantanganCRUD.php"
        </script>';
?>
    <a href="pantanganCRUD.php">Lihat Data</a>
<?php
    }
    else{
        // echo "Data gagal dihapus".mysqli_error($connect);
        echo '
        <script type="text/JavaScript"> 
            alert("Upss! Data Gagal Dihapus!");
            document.location.href="pantanganCRUD.php"
        </script>';
    }
?>