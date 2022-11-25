<?php
include "koneksi.php";

error_reporting(0);

session_start();

if (isset($_SESSION['username'])) {
    header("Location: admin/penyakitCRUD.php");
}

if (isset($_POST['submit'])) {
    $username = $_POST['username'];
    $password = md5($_POST['psw']);

    $sql = "SELECT * FROM pengguna WHERE username='$username' AND psw='$password'";
    $result = mysqli_query($conn, $sql);
    if ($result->num_rows > 0) {
        $row = mysqli_fetch_assoc($result);
        $_SESSION['username'] = $row['username'];
        header("Location: admin/penyakitCRUD.php");
    } else {
        echo "<script>alert('Username atau password Anda salah. Silahkan coba lagi!')</script>";
    }
}


