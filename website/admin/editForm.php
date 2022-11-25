<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - Edit Resep</title>
    <link rel="stylesheet" href="styleInsert.css">
</head>
<body>
        <?php
            include "koneksi.php";
            $idresep = $_GET['idresep'];
            $query = "SELECT r.idresep, r.namaresep, p.namapenyakit, r.gambarresep, 
            r.bahan, r.caramembuat, r.keterangan from resep r
            inner join penyakit p on r.idpenyakit=p.idpenyakit where r.idresep='$idresep'";
            $result = mysqli_query($connect, $query);
        ?>

    <div class="kotak">
        <form enctype="multipart/form-data" method="POST" action="editProses.php">
        <div class="container">
          <div class="container2">
            <H2><center>Edit Resep</center></H2>
            <?php
                    while($row=mysqli_fetch_array($result)){
            ?>
            <div class="row">
              <div class="col-25">
                <label for="namapenyakit"><b>Nama Penyakit</b></label>
              </div>
              <div class="col-75">
                <input type="text" name="namapenyakit" value="<?php echo $row['namapenyakit'];?>" readonly> 
              </div>
            </div>
            <div class="row">
              <div class="col-25">
                <label for="idresep"><b>ID Resep</b></label>
              </div>
              <div class="col-75">
                <input type="number" name="idresep" value="<?php echo $row['idresep'];?>" readonly> 
              </div>
            </div>
            <div class="row">
              <div class="col-25">
                <label for="nama"><b>Nama Resep</b></label>
              </div>
              <div class="col-75">
                <input type="text" name="namaresep" value="<?php echo $row['namaresep'];?>"><br>
              </div>
            </div>
            <div class="row">
              <div class="col-25">
                <label for="gambarresep"><b>Gambar Resep</b></label>
              </div>
              <div class="col-75">
              <input type="file" name="gambarresep" class="custom-file-upload" accept="image/*" value="<?php echo $row['gambarresep'];?>"><br>
              </div>
            </div>
            <div class="row">
              <div class="col-25">
                <label for="bahan"><b>Bahan</b></label>
              </div>
              <div class="col-75">
                <textarea type="text" name="bahan"><?php echo $row["bahan"]?></textarea>
              </div>
            </div>
            <div class="row">
              <div class="col-25">
                <label for="caramembuat"><b>Cara Membuat</b></label>
              </div>
              <div class="font col-75">
                <textarea type="text" name="caramembuat"><?php echo $row["caramembuat"]?></textarea>
              </div>
            </div>
            <div class="row">
              <div class="col-25">
                <label for="keterangan"><b>Keterangan</b></label>
              </div>
              <div class="font col-75">
                <textarea type="text" name="keterangan"><?php echo $row["keterangan"]?></textarea>
              </div>
            </div>
            <div class="row">
              <div class="group">
                <div class="back">
                  <a href="resepCRUD.php"><b>Back</b></a>
                </div>
                  <button type="submit" class="button" name="edit" value="Edit Data"><b>Submit</b></button>&nbsp;
              </div>
            </div>
            <?php
                    }
                ?>
          </div>
      </div>
    </div>
</body>
</html>