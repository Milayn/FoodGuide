<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - Edit Menu Pantangan</title>
    <link rel="stylesheet" href="styleInsert.css">
</head>
<body>
        <?php
            include "koneksi.php";
            $idpantangan = $_GET['idpantangan'];
            $query = "SELECT idpantangan, namapantangan, keterangan from menupantangan where idpantangan='$idpantangan'";
            $result = mysqli_query($connect, $query);
        ?>

    <div class="kotak">
        <form enctype="multipart/form-data" method="POST" action="editPantanganProses.php">
        <div class="container">
          <div class="container2">
            <H2><center>Edit Menu Pantangan</center></H2>
            <?php
                    while($row=mysqli_fetch_array($result)){
            ?>
            <div class="row">
              <div class="col-25">
                <label for="idpantangan"><b>ID Pantangan</b></label>
              </div>
              <div class="col-75">
                <input type="number" name="idpantangan" value="<?php echo $row['idpantangan'];?>" readonly>
              </div>
            </div>
            <div class="row">
              <div class="col-25">
                <label for="nama"><b>Nama Menu Pantangan</b></label>
              </div>
              <div class="col-75">
                <input type="text" name="namapantangan" value="<?php echo $row['namapantangan'];?>"><br>
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
                  <a href="pantanganCRUD.php"><b>Back</b></a>
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