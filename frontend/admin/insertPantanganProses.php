<?php
    include "koneksi.php";

    $idpenyakit =$_POST['idpenyakit'];
    $namapantangan =$_POST['namapantangan'];
    $keterangan =$_POST['keterangan'];

    $sql = "INSERT INTO menupantangan(idpenyakit, namapantangan, keterangan)
    VALUES('$idpenyakit','$namapantangan','$keterangan')";
    
    if(mysqli_query($connect, $sql)){
        // echo "Data berhasil ditambahkan";
        echo '
        <script type="text/JavaScript"> 
            alert("Data Berhasil Ditambahkan!");
            document.location.href="pantanganCRUD.php"
        </script>';
?>
    <a href="penyakitCRUD.php">Lihat Data</a>
<?php
    }
    else{
        // echo "Data gagal ditambahkan <br>" .mysqli_error($connect);
        echo '
        <script type="text/JavaScript"> 
            alert("Data Gagal Ditambahkan!!");
            document.location.href="pantanganCRUD.php"
        </script>';
    }
    mysqli_close($connect);
    
?>