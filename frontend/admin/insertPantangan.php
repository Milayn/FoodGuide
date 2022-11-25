<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tambah Menu Pantangan</title>
    <link rel="stylesheet" href="styleInsert.css">
    <script type="text/javascript" src="insert.js"></script>
</head>
<body>
  <div>
    <div class="kotak">
      <form enctype="multipart/form-data" method="POST" action="insertPantanganProses.php">
        <div class="container">
          <div class="container2">
            <H2><center>Tambah Menu Pantangan</center></H2> 
            <div class="row">
              <div class="col-25">
                <label for="idpenyakit"><b>ID Penyakit</b></label>
              </div>
              <?php 
               include "koneksi.php";
               $query = "SELECT * from penyakit";
               $result = mysqli_query($connect, $query);
              ?>
              <div class="col-75">
                <select name="idpenyakit" id="idpenyakit">
                  <?php 
                  if (mysqli_num_rows($result) >= 0) {
                    while ($row = mysqli_fetch_array($result)) {
                  ?>
                  <option value="<?php echo $row["idpenyakit"] ?>"><?php echo $row["namapenyakit"] ?></option>
                  <?php 
                      }
                    } 
                  ?>
                </select>
              </div>
            </div> 
            <div class="row">
              <div class="col-25">
                <label for="nama"><b>Nama Pantangan</b></label>
              </div>
              <div class="col-75">
                <input type="text" name="namapantangan" placeholder="Nama Menu Pantangan.."><br>
              </div>
            </div>
            <div class="row">
              <div class="col-25">
                <label for="keterangan"><b>Keterangan</b></label>
              </div>
              <div class="col-75">
                <textarea type="text" name="keterangan"></textarea>
              </div>
            </div>
            <div class="row">
              <div class="group">
                <div class="back">
                  <a href="pantanganCRUD.php"><b>Back</b></a>
                </div>
                  <button type="submit" class="button" name="tambah" id="open"><b>Submit</b></button>
              </div>
            </div>
          </div>
        </div>
      </form>
    </div>
  </div>
  <div class="modal-container" id="modal_container">
    <div class="modal">
      <h1>Data berhasil ditambahkan!</h1><br><br>
      <button class="btn-closed" id="close">
        Close me
      </button>
    </div>
  </div>
</body>
</html>