<?php
    include "koneksi.php";

    $idrekomendasi = $_POST['idrekomendasi'];
    $namarekomendasi = $_POST['namarekomendasi'];
    $keterangan = $_POST['keterangan'];

    //mencari idrekomendasi yang memeliki namapenyakit tertentu
    $sql ="SELECT idrekomendasi from menurekomendasi where namarekomendasi= '$namarekomendasi'";
    $hasil= mysqli_query($connect, $sql);

    if(mysqli_num_rows($hasil)>0){
         while($row = mysqli_fetch_array($hasil)){    
            $idrekomendasi = $row["idrekomendasi"];
        }
    }
    else{
        echo "0 hasil";
    }

    //Proses ubah data
    $query = "UPDATE menurekomendasi SET namarekomendasi='$namarekomendasi', idrekomendasi='$idrekomendasi',
    keterangan='$keterangan'
    WHERE idrekomendasi ='$idrekomendasi'";

    $result = mysqli_query($connect,$query);

    if($result){
        // echo "Berhasil update data";
        echo '
        <script type="text/JavaScript"> 
            alert("Data Berhasil di-Update!");
            document.location.href="rekomendasiCRUD.php"
        </script>';
?>
    <a href="rekomendasiCRUD.php">Lihat Data</a>
<?php
    }
    else{
        // echo "Gagal update data". mysqli_error($connect);
        echo '
        <script type="text/JavaScript"> 
            alert("Hufft, Data Gagal di-Update!");
            document.location.href="rekomendasiCRUD.php"
        </script>';
    }
?>