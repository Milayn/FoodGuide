<?php
    include "koneksi.php";

    $idpenyakit = $_POST['idpenyakit'];
    $namapenyakit = $_POST['namapenyakit'];
    $gambarpenyakit = $_FILES['gambarpenyakit']['name'];//mengambil nama file yg diupload
    $tmp = $_FILES['gambarpenyakit']['tmp_name'];//mengambil path folder sementara file yang diupload

    //merename nama foto dengan menmabhkan tanggal dan jam upload
    //$fotobaru = date('dmYHis').$gambarpenyakit;

    //memilih path unutk menyimpan foto
    
    $path= "images/penyakit/".$gambarpenyakit;

    //proses mengupload data
    if(move_uploaded_file($tmp, $path)){
        $sql = "INSERT INTO penyakit(idpenyakit, namapenyakit, gambarpenyakit)
        VALUES('$idpenyakit', '$namapenyakit', '$gambarpenyakit')";
    }else{
        echo '
        <script type="text/JavaScript"> 
            alert("Wahh! Sepertinya Ada Data Yang Belum Diisi");
            document.location.href="penyakitCRUD.php"
        </script>';
    }

    if(mysqli_query($connect, $sql)){
        // echo "Data berhasil ditambahkan";
        echo '
        <script type="text/JavaScript"> 
            alert("Data Berhasil Ditambahkan!");
            document.location.href="penyakitCRUD.php"
        </script>';
?>
    <!-- <a href="penyakitCRUD.php">Lihat Data</a> -->
<?php
    }
    else{
        // echo "Data gagal ditambahkan <br>" .mysqli_error($connect);
        echo '
        <script type="text/JavaScript"> 
            alert("Data Gagal Ditambahkan!!");
            document.location.href="penyakitCRUD.php"
        </script>';
    }
    mysqli_close($connect);
    
?>