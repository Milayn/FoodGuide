<!DOCTYPE html>
<html lang="en">
<!-- Basic -->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <title>Food Guide | PENYAKIT_DETAIL</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
    <header class="main-header">
        <!-- Start Navigation -->
        <nav class="navbar navbar-expand-lg navbar-light bg-hijau navbar-default bootsnav">
            <div class="container">
                <!-- Start Header Navigation -->
                <div class="navbar-header">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand" href="index.html"><img src="images/logo.jpg" class="logo" alt=""></a>
                </div>
                <!-- End Header Navigation -->

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="navbar-menu">
                    <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                        <li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
                        <li class="nav-item active"><a class="nav-link" href="penyakit.php">Penyakit</a></li>
                        <li class="nav-item"><a class="nav-link" href="menuresep.php">Resep Makanan</a></li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- Start Side Menu -->

        </nav>
        <!-- End Navigation -->
    </header>
    <!-- End Main Top -->

    <!-- Start Top Search -->
    <div class="top-search">
        <div class="container">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-search"></i></span>
                <input type="text" class="form-control" placeholder="Search">
                <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
            </div>
        </div>
    </div>
    <!-- End Top Search -->

    <!-- Start Banner -->

    <div class="all-title-box11">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <br><br><br><br><br><br><br><br>
                </div>
            </div>
        </div>
    </div>
    <!-- End Banner -->
    <br>


    <!-- start content -->

    <div class="categories-shop">
        <div class="container">
            <?php
            include "koneksi.php";
            $idpenyakit = $_GET['idpenyakit'];
            $query1 = "SELECT idpenyakit, namapenyakit, gambarpenyakit FROM penyakit where idpenyakit=$idpenyakit";
            $query2 = "SELECT idpantangan, idpenyakit, namapantangan, keterangan FROM menupantangan WHERE idpenyakit=$idpenyakit";
            $query3 = "SELECT idrekomendasi, idpenyakit, namarekomendasi, keterangan FROM menurekomendasi where idpenyakit=$idpenyakit";
            $query4 = "SELECT * FROM resep WHERE idpenyakit=$idpenyakit";
            $result1 = mysqli_query($connect, $query1);
            $result2 = mysqli_query($connect, $query2);
            $result3 = mysqli_query($connect, $query3);
            $result4 = mysqli_query($connect, $query4);

            ?>
            <div class="row">
                <div class="col-lg-12">
                    <div class="title-all">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="title-all text-center">
                                    <?php
                                    while ($row1 = mysqli_fetch_array($result1)) {;
                                    ?>
                                        <h1><?php echo $row1['namapenyakit'] ?></h1>
                                        <br>
                                        <img width="45%" src="admin/images/penyakit/<?php echo $row1['gambarpenyakit']; ?>" alt="" />
                                        <br>
                                    <?php
                                    }
                                    ?>
                                    <br>
                                </div>
                            </div>
                        </div>
                        <h2 style="font-weight: 700;">Makanan yang direkomendasikan</h2><br>
                        <?php
                        if (mysqli_num_rows($result3) > 0) {
                            while ($row3 = mysqli_fetch_array($result3)) {
                        ?>
                                <h3 style="padding-left: 25px;"><b><?php echo $row3['namarekomendasi'] ?></b></h3>
                                <p style="padding-left: 25px;"><?php echo $row3['keterangan'] ?></p>
                                <br>
                        <?php
                            }
                        }
                        ?>
                        <br>
                        <h2 style="font-weight: 700;">Makanan yang perlu dihindari</h2><br>
                        <?php
                        if (mysqli_num_rows($result2) > 0) {
                            while ($row2 = mysqli_fetch_array($result2)) {
                        ?>
                                <h3 style="padding-left: 25px;"><b><?php echo $row2['namapantangan'] ?></b></h3>
                                <p style="padding-left: 25px;"><?php echo $row2['keterangan'] ?></p>
                                <br>
                        <?php
                            }
                        }
                        ?>
                    </div>
                </div>
            </div>
        </div>
        <!-- Start Blog  -->
        <div class="latest-blog">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="title-all text-center">
                            <h1>Menu makanan yang direkomendasikan</h1>
                        </div>
                    </div>
                </div>
                <div class="row d-flex justify-content-start">
                    <?php
                    if (mysqli_num_rows($result4) > 0) {
                        while ($row4 = mysqli_fetch_array($result4)) {
                    ?>
                            <div class="col-md-6 col-lg-4 col-xl-4">
                                <div class="blog-box">
                                    <div class="blog-img">
                                        <img class="img-fluid" src="admin/images/resep/<?php echo $row4['gambarresep']; ?>" />
                                    </div>
                                    <div class="blog-content">
                                        <div class="title-blog">
                                            <h3><?php echo $row4['namaresep']; ?></h3>
                                            <?php echo $row4['keterangan']; ?>
                                        </div>
                                        <ul class="option-blog">
                                            <li><a href="resepPosts.php?idresep=<?php echo $row4['idresep']; ?>"><i class="fas fa-eye"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        <?php
                        }
                        ?>
                </div>
            </div>
        </div>
        <!-- End Blog  -->
    <?php

                    }

    ?>
    <br><br><br>
    </div>

    <!-- end content -->
    <br><br><br>
    <!-- Start Footer  -->
    <footer>
        <div class="footer-main">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-link">
                            <h4>FOOD GUIDE</h4>
                            <ul>
                                <li><a href="#">Tentang Kami</a></li>
                                <li><a href="#">FAQ</a></li>
                                <li><a href="#">Coorporate Partnership</a></li>
                                <li><a href="#">Sequrity</a></li>
                                <li><a href="#">Syarat dan Ketentuan</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-link-contact">
                            <h4>Hubungi Kami</h4>
                            <ul>
                                <li>
                                    <p><i class="fas fa-map-marker-alt"></i>Address: Gedung Food Guide, Jl. Soekarno Hatta<br>Nomer 20, Malang </p>
                                </li>
                                <li>
                                    <p><i class="fas fa-phone-square"></i>Phone: <a href="tel:+62 21-5555-7788">+62 21-5555-7788</a></p>
                                </li>
                                <li>
                                    <p><i class="fas fa-envelope"></i>Email: <a href="mailto:help@FoodGuide.com">help@FoodGuide.com</a></p>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-top-box">
                            <h4>Media Sosial</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            <ul>
                                <li><a href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-instagram" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-linkedin" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-youtube" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- End Footer  -->

    <!-- Start copyright  -->
    <div class="footer-copyright">
        <p class="footer-company"> &copy; Food Guide 2022 </p>
    </div>
    <!-- End copyright  -->

    <a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

    <!-- ALL JS FILES -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/jquery.superslides.min.js"></script>
    <script src="js/bootstrap-select.js"></script>
    <script src="js/inewsticker.js"></script>
    <script src="js/bootsnav.js."></script>
    <script src="js/images-loded.min.js"></script>
    <script src="js/isotope.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/baguetteBox.min.js"></script>
    <script src="js/form-validator.min.js"></script>
    <script src="js/contact-form-script.js"></script>
    <script src="js/custom.js"></script>
</body>

</html>