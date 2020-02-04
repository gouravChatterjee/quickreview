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



   <!--  <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="  crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
       -->

    <title>E-Quick review</title>
  </head>
  <body class="hold-transition  layout-top-nav">
    <div class="wrapper">
      <div class="container-fluid social">
        <div class="container">
           <a href="https://facebook.com" class="btn btn-primary btns"><i class="fa fa-facebook" style="font-size:25px; color: #fff;"></i></a>
           <a href="https://twitter.com" class="btn" style="background-color: #4BCFFA"><i class="fa fa-twitter" style="font-size:25px; color: #fff;"></i></a>
           <a href="https://youtube.com" class="btn btn-danger"><i class="fa fa-youtube" style="font-size:25px; color: #fff;"></i></a>
        </div>
      </div>

  <!-- NAVBAR STARTS -->
  <nav class="main-header navbar navbar-expand-md navbar-light navbar-white">
    <div class="container">
      <a href="https://atheneumglobal.education" class="navbar-brand">
        <img src="/IMAGES/favicon.ico" alt="" class="brand-image"
             style="height: 40px; width:auto;">
        <span class="btn btn-outline-danger brand-text">Atheneum</span>
      </a>
      
     

      <div class="collapse navbar-collapse order-3" id="navbarCollapse">
        <!-- Left navbar links -->
      <?php if ($_SESSION['LoggedIn']): ?>
        <ul class="navbar-nav">
          <li class="nav-item" style="margin-right: 5px;">
            <a href="/" class="btn btn-outline-success">Dashboard</a>
          </li>
          <li class="nav-item">
            <a href="refer" class="btn btn-outline-primary">Refer & Earn</a>
          </li>
        </ul>
      <?php endif; ?>

      </div>
     

      <!-- Right navbar links -->
      <ul class="order-1 order-md-3 navbar-nav navbar-no-expand ml-auto">
      <?php if ($_SESSION['LoggedIn']): ?>
       <li class="nav-item dropdown">
          <a class="btn btn-warning" data-toggle="dropdown" href="#">
            <?php echo $userFirst; ?> &nbsp;<i class="fa fa-caret-down"></i>
            <span class="badge badge-warning navbar-badge"></span>
          </a>
          <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
            <a href="signOut" class="nav-link">Sign Out</a>
            <div class="dropdown-divider"></div>
          </div>
        </li>
        <!-- Notifications Dropdown Menu -->
        <li class="nav-item dropdown">
          <a class="nav-link" data-toggle="dropdown" href="#">
            <i class="far fa-bell"></i>
            <span class="badge badge-warning navbar-badge"></span>
          </a>
          <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
            <span class="dropdown-header">No Notifications</span>
            <div class="dropdown-divider"></div>
          </div>
        </li>
        

        
        <?php else: ?>
          <li class="nav-item">
            <a href="signIn" class="btn btn-outline-success">Sign In</a>
          </li>
        <?php endif; ?>

      </ul>
       
      <button class="navbar-toggler order-1" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    </div>
  </nav>
  <!-- /.navbar -->

   
  
  <div class="content-wrapper">
  <section class="content">
    <br>
  

