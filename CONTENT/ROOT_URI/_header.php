<script>
      if ( window.history.replaceState ) {
          window.history.replaceState( null, null, window.location.href );
      }
</script>
<?php
$link = new mysqli(MYSQL_HOST,MYSQL_USER,MYSQL_PASS,MYSQL_DB);
$link->set_charset("utf8");
$email = $_SESSION["user"];


if(mysqli_connect_error()){
   die("ERROR: UNABLE TO CONNECT: ".mysqli_connect_error());
}
  
 
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
    <!-- <link rel="stylesheet" href="/CSS/plugins/icheck-bootstrap/icheck-bootstrap.min.css"> -->
    <!-- JQVMap -->
    <!-- <link rel="stylesheet" href="/CSS/plugins/jqvmap/jqvmap.min.css"> -->
    <!-- Theme style -->
    <link rel="stylesheet" href="/CSS/dist/css/adminlte.css">
    <!-- overlayScrollbars -->
    <!-- <link rel="stylesheet" href="/CSS/plugins/overlayScrollbars/css/OverlayScrollbars.min.css"> -->
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
      .dd:hover .dm {
        display: block;
      }
      .dd2:hover .dm2 {
        display: block;
      }
    </style>
  </head>
  <body class="hold-transition  layout-top-nav">
    <div class="wrapper">
      <div class="container-fluid social" style="background: #192A56;">
        <div class="container">
          <h1 class="text-center colorWhite">E-Quick Review</h1>
          <!-- <p class="text-center colorWhite">The place where you can find the best reviews</p> -->
          <h5 class="text-center colorWhite">100% free to join & earn money</h5>
          <div class="text">
            <a href="https://www.facebook.com/EquickReview-105904694349253/?ref=page_internal" class="btn btn-primary btns" title="Facebook Page"><i class="fa fa-facebook" style="font-size:25px; color: #fff;"></i></a>
             <a href="https://twitter.com/LetssConnect_?s=08" class="btn" style="background-color: #4BCFFA" title="Twitter Account"><i class="fa fa-twitter" style="font-size:25px; color: #fff;"></i></a>
             <a href="https://www.youtube.com/channel/UCX1KgIs81X9lTlp-Zgrf1ZA?view_as=subscriber" class="btn btn-danger" title="youtube channel"><i class="fa fa-youtube" style="font-size:25px; color: #fff;"></i></a>
             <a href="https://www.instagram.com/letssconnect/ " class="btn" style="background-color: #EA7773" title="Instagram"><i class="fa fa-instagram" style="font-size:25px; color: #fff;"></i></a>
             <a href="https://in.pinterest.com/equickreview/" class="btn" style="background-color: #E71C23" title="pinterest"><i class="fa fa-pinterest" style="font-size:25px; color: #fff;"></i></a>
             
            <?php if (!$_SESSION['LoggedIn']){ ?>
              <a href="signIn" class="btn btn-outline-light float-right" style="text-decoration: none; ">Sign In</a>
              <a href="#" data-toggle="modal" data-target="#exampleModalCenter" class="btn btn-light float-right" style="text-decoration: none; margin-right: 5px;">Subscribe</a>
             <?php }else{ ?>
             <a href="signOut" class="btn btn-outline-light float-right" style="text-decoration: none; ">Sign Out</a>
           <?php } ?>
          </div>
        </div>
      </div>

  <!-- NAVBAR STARTS -->
  <nav class="main-header navbar navbar-expand-md navbar-light navbar-white">
    <div class="container">
      <a href="/" class="navbar-brand">
        <span class="btn btn-outline-danger brand-text">Review</span>
      </a>

      <div class="collapse navbar-collapse order-3" id="navbarCollapse">
        <!-- Left navbar links -->
     
        <ul class="navbar-nav ml-auto">
          <li class="nav-item dropdown dd" style="margin-right: 5px;">
            <a href="allProducts" class="btn btn-outline-success dropdown-toggle" id="navbarDropdown" aria-haspopup="true" aria-expanded="false">Products</a>
            <div class="dropdown-menu dm" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="technology">Technology</a>
              <a class="dropdown-item" href="food">Food</a>
              <a class="dropdown-item" href="fashion">Fashion</a>
              <a class="dropdown-item" href="skincare">Skincare & beauty</a>
              <a class="dropdown-item" href="accessories">Accessories</a>
              <a class="dropdown-item" href="art">Art</a>
              <a class="dropdown-item" href="games">Games</a>
              <a class="dropdown-item" href="books">Books/e-books/audio-books</a>
              <a class="dropdown-item" href="homeDecor">Home Decor</a>
              <a class="dropdown-item" href="software">Software</a>
              <a class="dropdown-item" href="sports">Sports</a>
              <a class="dropdown-item" href="travel">Travel</a>
              <a class="dropdown-item" href="greenProducts">Green Products</a>
              <a class="dropdown-item" href="computer">Computer/Internet</a>
              <a class="dropdown-item" href="health">Health & Fitness</a>
              <a class="dropdown-item" href="bestProducts">Best Products</a>
              <a class="dropdown-item" href="others">Others</a>
            </div>
          </li>
          <li class="nav-item dropdown dd2" style="margin-right: 5px;">
            <a href="allServices" class="btn btn-outline-dark dropdown-toggle" id="navbarDropdown" aria-haspopup="true" aria-expanded="false">Services</a>
            <div class="dropdown-menu dm2" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="education">Education/Course</a>
              <a class="dropdown-item" href="onlineCourses">Online Courses</a>
              <a class="dropdown-item" href="eCommerce">E-Commerce</a>
              <a class="dropdown-item" href="meditation">Spirituality/Meditation</a>
              <a class="dropdown-item" href="selfAwarness">Self-awareness</a>
              <a class="dropdown-item" href="jobs">Employment/Jobs</a>
              <a class="dropdown-item" href="movies">Movies/Music</a>
              <a class="dropdown-item" href="business">Business/ Entrepreneurship</a>
              <a class="dropdown-item" href="publicSpeaking">Public speaking</a>
              <a class="dropdown-item" href="coach">Coach/Mentor</a>
              <a class="dropdown-item" href="leadership">Leadership</a>
              <a class="dropdown-item" href="opportunity">Best opportunity</a>
              <a class="dropdown-item" href="otherServices">Other Services</a>
            </div>
          </li>
          <li class="nav-item" style="margin-right: 5px;">
            <a href="forum" class="btn btn-warning">Forum</a>
          </li>
          <li class="nav-item" >
            <a href="about" class="btn btn-primary">About</a>
            <a href="contact" class="btn btn-success">Contact Us</a>
            <?php if ($_SESSION['LoggedIn']) { ?>
              <a href="#" class="btn btn-dark"><?php echo $_SESSION['userName']; ?></a>
            <?php }else{
              echo '<a href="signUp" class="btn btn-dark">Sign Up</a>';
            } ?>
          </li>
          
        </ul>
    
      </div>
     
      <button class="navbar-toggler order-1" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    </div>
  </nav>
  <!-- /.navbar -->

  <div class="content-wrapper">
  <section class="content">
    <br>
   <?php 
        if (isset($_POST['subscribe'])) {
          $fName = $_POST['fName'];
          $lName = $_POST['lName'];
          $bEmail = $_POST['bEmail'];
          $phone = $_POST['pNumber'];

          $stmt = $link->prepare("INSERT INTO SUBSCRIBERS (`FIRST_NAME`, `LAST_NAME`, `PHONE`, `EMAIL`) VALUES (?, ?, ?, ?)");
          $stmt->bind_param("ssss", $fName, $lName, $phone, $bEmail);
          if ($stmt->execute()) { 
            echo '<div class="alert alert-success">You are now subscribed!</div>';
          }else{
            echo '<div class="alert alert-warning">'.mysqli_error($link).'</div>';
          }
        }

       ?>

      <!-- MODAL FOR SUBSCRIBE FORM -->
        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Subscribe Now to get all the updates</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <form method="POST">
              <div class="modal-body">
                  <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="First Name" name="fName" required>
                    <div class="input-group-append">
                      <div class="input-group-text">
                        <span class="fas fa-user"></span>
                      </div>
                    </div>
                  </div>
                  <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Last Name" name="lName" required>
                    <div class="input-group-append">
                      <div class="input-group-text">
                        <span class="fas fa-user"></span>
                      </div>
                    </div>
                  </div>
                  <div class="input-group mb-3">
                    <input type="email" class="form-control" placeholder="Best Email" name="bEmail" required>
                    <div class="input-group-append">
                      <div class="input-group-text">
                        <span class="fas fa-envelope"></span>
                      </div>
                    </div>
                  </div>
                  <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Phone Number" name="pNumber" required>
                    <div class="input-group-append">
                      <div class="input-group-text">
                        <span class="fas fa-phone"></span>
                      </div>
                    </div>
                  </div>
              </div>
              <div class="modal-footer">
                <button type="submit" name="subscribe" class="btn btn-primary">Subscribe Now</button>
              </div>
              </form>
            </div>
          </div>
        </div>

      <!-- MODAL ENDS -->

