<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - Edit Menu Rekomendasi</title>
    <link rel="stylesheet" href="styleInsert.css">
</head>
<body>
        <?php
            include "koneksi.php";
            $idrekomendasi = $_GET['idrekomendasi'];
            $query ="SELECT mr.idrekomendasi, p.idpenyakit, mr.namarekomendasi, mr.keterangan 
            from menurekomendasi mr inner join penyakit p on mr.idpenyakit = p.idpenyakit where mr.idrekomendasi = '$idrekomendasi'";            
            $result = mysqli_query($connect, $query);

        ?>

    <div class="kotak">
        <form enctype="multipart/form-data" method="POST" action="editRekomProses.php">
        <div class="container">
          <div class="container2">
            <H2><center>Edit Menu Rekomendasi</center></H2>
            <?php
                    while($row=mysqli_fetch_array($result)){
            ?>
            <div class="row">
              <div class="col-25">
                <label for="idrekomendasi"><b>ID Rekomendasi</b></label>
              </div>
              <div class="col-75">
                <input type="number" name="idrekomendasi" value="<?php echo $row['idrekomendasi'];?>" readonly> 
              </div>
            </div>
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
                <label for="namarekomendasi"><b>Nama Rekomendasi</b></label>
              </div>
              <div class="col-75">
                <input type="text" name="namarekomendasi" value="<?php echo $row['namarekomendasi'];?>"><br>
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
                  <a href="rekomendasiCRUD.php"><b>Back</b></a>
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