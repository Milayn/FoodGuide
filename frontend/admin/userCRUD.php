<!DOCTYPE html>
<html>
<title>Home Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="styleHome.css">
<body>

<!-- Sidebar -->
<div class="w3-sidebar bg-sidebar w3-bar-block" style="width:20%">
  <h3 class="w3-bar-item my-text-teal"><b>Admin</b></h3><br>
  <a href="index.php" class="w3-bar-item w3-button">Menu</a>
  <a href="orderCRUD.php" class="w3-bar-item w3-button">Order</a>
  <a href="userCRUD.php" class="w3-bar-item w3-button">User</a>
  <div class="logout">
    <a href="../index.html">Log Out</a>
  </div>
</div>

<!-- Page Content -->
<div style="margin-left:20%">

<div class="w3-container w3-teal">
    <br><h1><center><b>User</b></center></h1><br><br>
</div><br>
<div class="w3-container">
    <table>
        <tr>
            <th>ID User</th>
            <th>Nama</th>
            <th>Username</th>
            <th>Telepon</th>
        </tr>
        <?php
            include "koneksi.php";

            $query ="SELECT * FROM user";
            $result = mysqli_query($connect, $query);

            if(mysqli_num_rows($result)>0){
                while($row = mysqli_fetch_array($result)){    
        ?>
        <tr>
            <td><?php echo $row["userid"]?></td>
            <td><?php echo $row["nama"]?></td>
            <td><?php echo $row["username"]?></td>
            <td><?php echo $row["telepon"]?></td>
        </tr>
        <?php
                }
            }
            else{
                echo "0 result";
            }
        ?>
    </table>
</div>

</div>
      
</body>
</html>
