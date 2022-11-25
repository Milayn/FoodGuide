<!DOCTYPE html>
<html>
<head>
    <title>Home Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="styleHome.css">
</head>

<body>
    <!-- Sidebar -->
    <div class="w3-sidebar bg-sidebar w3-bar-block" style="width:20%">
        <div class="admin">
            <h5><b>Admin</b></h5>
        </div>
        <a href="index.php" class="w3-bar-item w3-button">Penyakit</a>
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
                <center><b>Resep Makanan</b></center>
            </h1><br><br>
        </div><br>
        <div class="w3-container">
            <div class="w3-container">
                <form action="resepCRUD.php" method="get">
                    <label><b> Cari</b></label>
                    <input type="text" name="cari">
                    <input type="submit" value="Cari" class="btn btn-success">
                </form>
                <br>
                <div class="tambah">
                    <a href="insertForm.php"> Tambah Data</a>
                </div>
                <table>
                    <tr>
                        <th>Nama Penyakit</th>
                        <th>ID Resep</th>
                        <th>Nama Resep</th>
                        <th>Gambar</th>
                        <th>Bahan</th>
                        <th>Cara Membuat</th>
                        <th>Aksi</th>
                    </tr>
                    <?php
                    include "koneksi.php";
                    if (isset($_GET['cari'])) {
                        $cari = $_GET['cari'];
                        $query = "SELECT r.idresep, r.namaresep, p.namapenyakit, r.gambarresep, 
                        r.bahan, r.caramembuat, r.keterangan from resep r
                        inner join penyakit p on r.idpenyakit=p.idpenyakit where r.namaresep like '%$cari%' OR r.bahan like '%$cari%' 
                        OR p.namapenyakit like '%$cari%' OR r.caramembuat like '%$cari%'";
                        if ($cari == null) {
                            $query = "SELECT r.idresep, r.namaresep, p.namapenyakit, r.gambarresep, 
                            r.bahan, r.caramembuat from resep r
                            inner join penyakit p on r.idpenyakit=p.idpenyakit";
                        }
                    } else {
                        $query = "SELECT r.idresep, r.namaresep, p.namapenyakit, r.gambarresep, 
                        r.bahan, r.caramembuat, r.keterangan from resep r
                        inner join penyakit p on r.idpenyakit=p.idpenyakit";
                    }
                    $result = mysqli_query($connect, $query);

                    if (mysqli_num_rows($result) >= 0) {
                        while ($row = mysqli_fetch_array($result)) {
                    ?>
                            <tr>
                                <td><?php echo $row["namapenyakit"] ?></td>
                                <td><?php echo $row["idresep"] ?></td>
                                <td><?php echo $row["namaresep"] ?></td>
                                <td><?php echo '<img src = "images/resep/' . $row['gambarresep'] . '">' ?></td>
                                <td><?php echo nl2br(htmlspecialchars($row["bahan"])) ?></td>
                                <td><?php echo nl2br(htmlspecialchars($row["caramembuat"])) ?></td>

                                <td>
                                    <div class="aksi">
                                        <div class="edit">
                                            <a href="editForm.php?idresep=<?php echo $row['idresep']; ?>">Edit</a>
                                        </div>
                                        <div class="hapus">
                                            <a href="hapus.php?idresep=<?php echo $row['idresep']; ?>">Hapus</a>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                    <?php
                        }
                    } else {
                        echo "0 result";
                    }
                    ?>
                </table>
            </div>
        </div>
</body>

</html>