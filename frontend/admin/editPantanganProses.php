<?php
    include "koneksi.php";

    $idpantangan = $_POST['idpantangan'];
    $namapantangan = $_POST['namapantangan'];
    $keterangan = $_POST['keterangan'];

    //mencari idpantangan yang memeliki namapenyakit tertentu
    $sql ="SELECT idpantangan from menupantangan where namapantangan= '$namapantangan'";
    $hasil= mysqli_query($connect, $sql);

    if(mysqli_num_rows($hasil)>0){
         while($row = mysqli_fetch_array($hasil)){    
            $idpantangan = $row["idpantangan"];
        }
    }
    else{
        echo "0 hasil";
    }

    //Proses ubah data
    $query = "UPDATE menupantangan SET namapantangan='$namapantangan', idpantangan='$idpantangan',
    keterangan='$keterangan'
    WHERE idpantangan ='$idpantangan'";

    $result = mysqli_query($connect,$query);

    if($result){
        // echo "Berhasil update data";
        echo '
        <script type="text/JavaScript"> 
            alert("Data Berhasil di-Update!");
            document.location.href="pantanganCRUD.php"
        </script>';
?>
    <a href="pantanganCRUD.php">Lihat Data</a>
<?php
    }
    else{
        // echo "Gagal update data". mysqli_error($connect);
        echo '
        <script type="text/JavaScript"> 
            alert("Hufft, Data Gagal di-Update!");
            document.location.href="pantanganCRUD.php"
        </script>';
    }
?>