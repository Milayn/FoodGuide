<!DOCTYPE html>
<html>
<title>Home Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="styleHome.css">

<body>
    <!-- Sidebar -->
    <div class="w3-sidebar bg-sidebar w3-bar-block" style="width:20%">
        <div class="admin">
            <h5><b>Admin</b></h5>
        </div>
        <a href="penyakitCRUD.php" class="w3-bar-item w3-button">Penyakit</a>
        <a href="rekomendasiCRUD.php" class="w3-bar-item w3-button">Rekomendasi</a>
        <a href="pantanganCRUD.php" class="w3-bar-item w3-button">Pantangan</a>
        <a href="resepCRUD.php" class="w3-bar-item w3-button">Resep</a>
        <div class="logout">
            <a href="logout.php">Log Out</a>
        </div>
    </div>

    <!-- Page Content -->
    <div style="margin-left:20%">

        <div class="w3-container w3-teal">
            <br>
            <h1>
                <center><b>Menu Pantangan</b></center>
            </h1><br><br>
        </div><br>
        <div class="w3-container">
            <div class="w3-container">
                <form action="pantanganCRUD.php" method="get">
                    <label><b> Cari</b></label>
                    <input type="text" name="cari">
                    <input type="submit" value="Cari" class="btn btn-success">
                </form>
                <br>
                <div class="tambah">
                    <a href="InsertPantangan.php">Tambah Data</a>
                </div>
                <table>
                    <tr>
                        <th>ID Pantangan</th>
                        <th>ID Penyakit</th>
                        <th>Nama Pantangan</th>
                        <th>Keterangan</th>
                        <th>Aksi</th>
                    </tr>
                    <?php
                    include "koneksi.php";
                    if(isset($_GET['cari'])){
                        $cari = $_GET['cari'];
                        $query="SELECT idpantangan, idpenyakit, namapantangan, keterangan
                        from menupantangan where namapantangan like '%$cari%' OR idpantangan like '$cari' 
                        OR idpenyakit like '$cari' OR keterangan like '%$cari%'";	
                        if($cari==null)	{
                            $query = "SELECT idpantangan, idpenyakit, namapantangan, keterangan
                        from menupantangan";
                        }		
                    }else{
                        $query = "SELECT idpantangan, idpenyakit, namapantangan, keterangan
                        from menupantangan";	
                    }
                    $result = mysqli_query($connect, $query);

                    if (mysqli_num_rows($result)) {
                        while ($row = mysqli_fetch_array($result)) {
                    ?>
                            <tr>
                                <td><?php echo $row["idpantangan"] ?></td>
                                <td><?php echo $row["idpenyakit"] ?></td>
                                <td><?php echo $row["namapantangan"] ?></td>
                                <td><?php echo nl2br(htmlspecialchars($row["keterangan"])) ?></td>

                                <td>
                                    <div class="aksi">
                                        <div class="edit">
                                            <a href="editPantangan.php?idpantangan=<?php echo $row['idpantangan']; ?>">Edit</a>
                                        </div>
                                        <div class="hapus">
                                            <a href="hapusPantangan.php?idpantangan=<?php echo $row['idpantangan']; ?>">Hapus</a>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                    <?php
                        }
                    }
                    ?>
                </table>
            </div>

        </div>

</body>

</html>