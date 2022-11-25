<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - Edit Penyakit</title>
    <link rel="stylesheet" href="styleInsert.css">
</head>
<body>
        <?php
            include "koneksi.php";
            $idpenyakit = $_GET['idpenyakit'];
            $query ="SELECT p.idpenyakit, p.namapenyakit, p.gambarpenyakit from penyakit p where p.idpenyakit=$idpenyakit";
            $result = mysqli_query($connect, $query);
        ?>

    <div class="kotak">
        <form enctype="multipart/form-data" method="POST" action="editPenyakitProses.php">
        <div class="container">
          <div class="container2">
            <H2><center>Edit Penyakit</center></H2>
            <?php
                    while($row=mysqli_fetch_array($result)){
            ?>
            <div class="row">
              <div class="col-25">
                <label for="idpenyakit"><b>ID Penyakit</b></label>
              </div>
              <div class="col-75">
                <input type="number" name="idpenyakit" value="<?php echo $row['idpenyakit'];?>" readonly> 
              </div>
            </div>
            <div class="row">
              <div class="col-25">
                <label for="namapenyakit"><b>Nama Penyakit</b></label>
              </div>
              <div class="col-75">
                <input type="text" name="namapenyakit" value="<?php echo $row['namapenyakit'];?>"><br>
              </div>
            </div>
            <div class="row">
              <div class="col-25">
                <label for="gambarpenyakit"><b>Gambar Penyakit</b></label>
              </div>
            <div class="col-75">
              <input type="file" name="gambarpenyakit" class="custom-file-upload" accept="image/penyakit/*" value="<?php echo $row['gambarpenyakit'];?>"><br>
              </div>
            </div>
            <div class="row">
              <div class="group">
                <div class="back">
                  <a href="penyakitCRUD.php"><b>Back</b></a>
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