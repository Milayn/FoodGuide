<?php
    include "koneksi.php";

    $idresep = $_POST['idresep'];
    $namaresep = $_POST['namaresep'];
    $namapenyakit = $_POST['namapenyakit'];
    $gambarresep = $_POST['gambarresep'];
    $bahan = $_POST['bahan'];
    $caramembuat = $_POST['caramembuat'];
    $keterangan = $_POST['keterangan'];

    //mengambil data foto yang dipilih dalam form
    $gambarresep = $_FILES['gambarresep']['name'];//mengambil nama file yg diupload
    $tmp = $_FILES['gambarresep']['tmp_name'];

    //mencari idpenyakit yang memeliki namapenyakit tertentu
    $sql ="SELECT idpenyakit from penyakit where namapenyakit= '$namapenyakit'";
    $hasil= mysqli_query($connect, $sql);

    if(mysqli_num_rows($hasil)>0){
         while($row = mysqli_fetch_array($hasil)){    
            $idpenyakit = $row["idpenyakit"];
        }
    }
    else{
        echo "0 hasil";
    }

    if(empty($gambarresep)){//jika user tidak memilih file foto pada form
        $query = "UPDATE resep SET namaresep='$namaresep', idpenyakit='$idpenyakit', bahan='$bahan', 
        caramembuat='$caramembuat', keterangan='$keterangan'
        WHERE idresep ='$idresep'";
    }else{
        $gambarresepbaru = date('dmYHis').$gambarresep;
        $path = "images/".$gambarresepbaru;

        if(move_uploaded_file($tmp, $path)){     
            $sql = "SELECT * FROM resep WHERE idresep='$idresep'";
            $hasil = mysqli_query($connect,$sql);

            if(mysqli_num_rows($hasil)>0){
                while($row = mysqli_fetch_array($hasil)){  
                    if(is_file("images/".$row['gambarresepbaru']))
                    unlink("images/".$row['gambarresepbaru']);
                }
            }
            //Proses ubah data
            $query = "UPDATE resep SET namaresep='$namaresep', idpenyakit='$idpenyakit', gambarresep = '$gambarresepbaru', bahan='$bahan', 
            caramembuat='$caramembuat', keterangan='$keterangan'
            WHERE idresep ='$idresep'";
        } 
    }
    $result = mysqli_query($connect,$query);

    if($result){
        // echo "Berhasil update data";
        echo '
        <script type="text/JavaScript"> 
            alert("Data Berhasil di-Update!");
            document.location.href="resepCRUD.php"
        </script>';
?>
    <a href="penyakitCRUD.php">Lihat Data</a>
<?php
    }
    else{
        // echo "Gagal update data". mysqli_error($connect);
        echo '
        <script type="text/JavaScript"> 
            alert("Hufft, Data Gagal di-Update!");
            document.location.href="resepCRUD.php"
        </script>';
    }
?>