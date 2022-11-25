<?php
    include "koneksi.php";

    $idpenyakit =$_POST['idpenyakit'];
    $namarekomendasi =$_POST['namarekomendasi'];
    $keterangan =$_POST['keterangan'];

    $sql = "INSERT INTO menurekomendasi(idpenyakit, namarekomendasi, keterangan)
    VALUES('$idpenyakit','$namarekomendasi','$keterangan')";
    
    if(mysqli_query($connect, $sql)){
        // echo "Data berhasil ditambahkan";
        echo '
        <script type="text/JavaScript"> 
            alert("Data Berhasil Ditambahkan!");
            document.location.href="rekomendasiCRUD.php"
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
            document.location.href="rekomendasiCRUD.php"
        </script>';
    }
    mysqli_close($connect);
    
?>