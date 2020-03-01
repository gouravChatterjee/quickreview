<?php
$link = new mysqli(MYSQL_HOST,MYSQL_USER,MYSQL_PASS,MYSQL_DB);
$link->set_charset("utf8");
$email = $_SESSION["user"];


if(mysqli_connect_error()){
   die("ERROR: UNABLE TO CONNECT: ".mysqli_connect_error());
}

 // $sql = "SELECT * FROM ATHENEUM_STUDENT WHERE EMAIL = '$email'";

 // $result = mysqli_query($link,$sql);

 // if($result){
 //      if(mysqli_num_rows($result)>0){
 //        $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
 //        $userName = $row["NAME"];
 //        $name = explode(" ", $userName);
 //        $userFirst = $name[0];
 //      }
 //  }
 ?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="/CSS/style.css">
    <link rel="stylesheet" href="/CSS/DIZ.css">
    
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

     <link rel="stylesheet" href="/CSS/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
    <link rel="stylesheet" href="/CSS/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- JQVMap -->
    <!-- <link rel="stylesheet" href="/CSS/plugins/jqvmap/jqvmap.min.css"> -->
    <!-- Theme style -->
    <link rel="stylesheet" href="/CSS/dist/css/adminlte.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="/CSS/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <!-- <link rel="stylesheet" href="/CSS/video.css" > -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    <!-- <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> -->
    <!-- <script src="https://kit.fontawesome.com/e1f2cafe0a.js"></script> -->

    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.9/jquery-ui.js"></script>

    <title>E-Quick review</title>
    <style type="text/css">
      .colorWhite{
        color: #fff;
      }
    </style>
  </head>
  <body class="hold-transition layout-top-nav">
    <div class="wrapper">
  <!-- NAVBAR STARTS -->
  <nav class="navbar navbar-expand-lg navbar-light bg-white">
      <a class="navbar-brand btn btn-outline-success" href="#">E-Quick Review</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <?php if ($_SESSION['LoggedIn']){ ?>
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="_home">Dashboard <span class="sr-only">(current)</span></a>
          </li>
          <!-- <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li> -->
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Products
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="allProducts">All Products</a>
              <a class="dropdown-item" href="addProduct">Add Product</a>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Services
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="allServices">All Services</a>
              <a class="dropdown-item" href="addService">Add Service</a>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="forum">Forum</a>
          </li>
          <!-- <li class="nav-item">
            <a class="nav-link" href="subscribers">Subscribers</a>
           </li> -->
        </ul>
         <ul class="navbar-nav ml-auto">
          <li class="nav-item dropdown">
            <a class="nav-link" href="adminSignOut">
             <button class="btn btn-danger">Sign Out</button>
            </a>
          </li>
         </ul>
       <?php }else{ ?>
        <ul class="navbar-nav ml-auto">
          <li class="nav-item dropdown">
            <a class="nav-link" href="adminSign">
             <button class="btn btn-primary">Sign In</button>
            </a>
          </li>
         </ul>
       <?php } ?>
      </div>
    </nav>
  <!-- /.navbar -->

   
  
  <div class="content-wrapper">
  <section class="content">
    <br>
  

