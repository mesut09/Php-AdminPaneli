<?php 
//include 'adminpaneli/class/VT.php';


try{
	$db=new PDO("mysql:host=localhost;dbname=adminpaneli;charset=utf8",'root','');
	//echo "Veritabanı bağlantısı başarılı";
}
catch(PDOException $e){
	echo $e->getMessage();
}


$ayarsor=$db->prepare("SELECT * FROM ayarlar where ID=:id");
$ayarsor->execute(array(
'id' => 1
));
$ayarcek=$ayarsor->fetch(PDO::FETCH_ASSOC);
?>

<!doctype html>
<html class="no-js" lang="zxx">
<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title><?php echo $ayarcek['baslik']; ?></title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="manifest" href="site.webmanifest">
	<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

	<!-- CSS here -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="assets/css/slicknav.css">
	<link rel="stylesheet" href="assets/css/flaticon.css">
	<link rel="stylesheet" href="assets/css/animate.min.css">
	<link rel="stylesheet" href="assets/css/magnific-popup.css">
	<link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
	<link rel="stylesheet" href="assets/css/themify-icons.css">
	<link rel="stylesheet" href="assets/css/slick.css">
	<link rel="stylesheet" href="assets/css/nice-select.css">
	<link rel="stylesheet" href="assets/css/style.css">
</head>

<body class="body-bg">
<!--? Preloader Start -->
<div id="preloader-active">
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="preloader-inner position-relative">
            <div class="preloader-circle"></div>
            <div class="preloader-img pere-text">
                
            </div>
        </div>
    </div>
</div>
<header>
    <!-- Header Start -->
    <div class="header-area">
        <div class="main-header ">
            <div class="header-top d-none d-lg-block">
                <div class="container">
                    <div class="col-xl-12">
                        <div class="row d-flex justify-content-between align-items-center">
                            <div class="header-info-left">
                                <ul>     
                                    <li><i class="far fa-clock"></i><?php echo $ayarcek['telefon']; ?></li>
                                </ul>
                            </div>
                            <div class="header-info-right">
                                <ul class="header-social">    
                                    <li><a href="https://www.facebook.com/mesut.bilge.902/"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a href="https://www.instagram.com/mesut.blge/?hl=tr"><i class="fab fa-instagram"></i></a></li>
                                    
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-bottom  header-sticky">
                <div class="container">
                    <div class="row align-items-center">
                        <!-- Logo -->
                        <div class="col-xl-2 col-lg-2">
                            
                        </div>
                        <div class="col-xl-10 col-lg-10">
                            <div class="menu-wrapper  d-flex align-items-center justify-content-end">
                                <!-- Main-menu -->
                                <div class="main-menu d-none d-lg-block">
                                    <nav> 
                                        <ul id="navigation">                                                                                          
                                            <li><a href="index.php">Anasayfa</a></li>
                                            <li><a href="about.php">Hakkımızda</a></li>
                                            <li><a href="services.php">Ürünler</a></li>
                                            </li>
                                            <li><a href="contact.php">İletişim</a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div> 
                        <!-- Mobile Menu -->
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->
</header>