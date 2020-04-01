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
<?php 
require 'google-api/vendor/autoload.php';

function saveDataSpreadsheet($name, $email, $phone)
{
    $client = new Google_Client();
    $client->setApplicationName('Google Sheets API PHP Quickstart');
    $client->setScopes(Google_Service_Sheets::SPREADSHEETS);
    $client->setAuthConfig('google-api/credentials.json');
    $client->setAccessType('online');
    $service = new Google_Service_Sheets($client);

    // print_r($service);
    $spreadsheetId = '1SmCw5R1K9zRARml5iSOZFloYMtFJg2IacB3MuC4hOWk';
    $range = "Sheet1";
    $values = [
      [
          $name, $email, $phone
      ],
    ];
    $body = new Google_Service_Sheets_ValueRange([
        'values' => $values
    ]);
    $params = [
        'valueInputOption' => 'RAW'
    ];
    $insert = [
        'insertDataOption' => 'INSERT_ROWS'
    ];
    $result = $service->spreadsheets_values->append($spreadsheetId, $range, $body, $params, $insert);
}




    if (isset($_POST['subscribe'])) {
      $name = $_POST['name'];
      $bEmail = $_POST['bEmail'];
      $phone = $_POST['pNumber'];

      $stmt = $link->prepare("INSERT INTO SUBSCRIBERS (`NAME`, `PHONE`, `EMAIL`) VALUES (?, ?, ?)");
      $stmt->bind_param("sss", $name, $phone, $bEmail);
      if ($stmt->execute()) { 
        // if (saveDataSpreadsheet($name, $bEmail, $phone)) {
        //   echo "hello";
        // }
        saveDataSpreadsheet($name, $bEmail, $phone);
        $to = $bEmail;
        $subject = "Subscribe Confirmation";

        $message = "
        <html>
        <head>
        <title>Subscribe Confirmation</title>
        </head>
        <body>
        <p>Welcome to <a href='https://equickreview.com'>Equickreview</a>. Thank you for subscribing us. You will be the first to know about new releases, best product/services,giveaways, special offers, big discounts & best value of your money. Explore our <a href='https://equickreview.com'>website</a> to see all the reviews and you can also request for review.<br>
          Stay tuned..</p>
        <img src='https://equickreview.com/IMAGES/subscribe.png'>
        <p>Visit us for any questions, enquiry or anything on your mind! Click <a href='https://equickreview.com'>here</a> to visit our website. </p>
        </body>
        </html>
        ";

        // Always set content-type when sending HTML email
        $headers = "MIME-Version: 1.0" . "\r\n";
        $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

        // More headers
        $headers .= 'From: Admin<no-reply@equickreview.com>' . "\r\n";

        mail($to,$subject,$message,$headers);
        echo '<script>window.location.href = "thankYou"</script>';
        echo '<div class="alert alert-success">You are now subscribed!</div>';
      }else{
        echo '<div class="alert alert-warning">'.mysqli_error($link).'</div>';
      }
    }

?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-QRXS6VWZSY"></script>
<!--     <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'G-QRXS6VWZSY');
    </script> -->


    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="/CSS/style.css">
    <link rel="stylesheet" href="/CSS/DIZ.css">
    
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

     <link rel="stylesheet" href="/CSS/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
    <link rel="stylesheet" href="/CSS/dist/css/adminlte.css">
    
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.9/jquery-ui.js"></script>

    <title>E-Quick review</title>
    <style type="text/css">
    
    </style>
  </head>
  <body class="hold-transition  layout-top-nav">
    <div class="wrapper">
      <div class="container-fluid social">
        <div class="container">
          <div class="row">
            <div class="col-md-12 col-sm-12 text-center">
              <h1 class="colorWhite">Equick Review</h1>
              <h4 style="color: #fff;">100% free to join & earn money</h4>
            <!-- <p class="text-center colorWhite">The place where you can find the best reviews</p> -->
            </div>
          </div>
          <div class="row mt-2">
            <div class="col-md-3 col-sm-12 socBtn">
              <a href="https://www.facebook.com/EquickReview-105904694349253/?ref=page_internal" class="btn btn-primary btns" title="Facebook Page"><i class="fa fa-facebook" style="font-size:25px; color: #fff;"></i></a>
               <a href="https://twitter.com/LetssConnect_?s=08" class="btn" style="background-color: #4BCFFA" title="Twitter Account"><i class="fa fa-twitter" style="font-size:25px; color: #fff;"></i></a>
               <a href="https://www.youtube.com/channel/UCX1KgIs81X9lTlp-Zgrf1ZA?view_as=subscriber" class="btn btn-danger" title="youtube channel"><i class="fa fa-youtube" style="font-size:25px; color: #fff;"></i></a>
               <a href="https://www.instagram.com/letssconnect/" class="btn" style="background-color: #EA7773" title="Instagram"><i class="fa fa-instagram" style="font-size:25px; color: #fff;"></i></a>
               <a href="https://in.pinterest.com/equickreview/" class="btn" style="background-color: #E71C23" title="pinterest"><i class="fa fa-pinterest" style="font-size:25px; color: #fff;"></i></a>
            </div>
            <div class="col-md-9 col-sm-12">
                <form method="POST">
                  <div class="row">
                    <div class="col-md-2 col-sm-4">
                      <input type="text" class="form-control inputBox" name="name" placeholder="Name" required>
                    </div>
                    <div class="col-md-2 col-sm-4">
                      <input type="email" class="form-control inputBox" name="bEmail" placeholder="Best Email" required>
                    </div>
                    <div class="col-md-2 col-sm-4">
                      <input type="number" class="form-control inputBox" name="pNumber" placeholder="Phone No." required>
                    </div>
                    <div class="col-md-2 col-sm-4 subBtn">
                      <input type="submit" class="btn btn-success" name="subscribe" value="Subscribe">
                    </div>
                  </div>
                </form>
            </div>
            
          </div>
        </div>
      </div>

  <!-- NAVBAR STARTS -->
  <nav class="main-header navbar navbar-expand-md navbar-light navbar-white" id="myHeader" style="background: #fff; z-index: 1;">
    <div class="container">
      <!-- <a href="/" class="navbar-brand">
        <img src="/IMAGES/logo.png" height="60" width="60" style="border-radius: 50%" alt="Image Logo">
      </a> -->
      <button class="navbar-toggler order-1" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse order-3" id="navbarCollapse">
        <!-- Left navbar links -->
     
        <ul class="navbar-nav ml-auto mr-auto menu">
          <li class="nav-item" style="margin-right: 5px;">
            <a href="about" class="btn btn-outline-success menuItem" style="font-weight: bold;">About</a>
          </li>
          <li class="nav-item" style="margin-right: 5px;">
            <a href="requestReview" class="btn btn-outline-success menuItem" style="font-weight: bold;">Request a Review</a>
          </li>
          <li class="nav-item" style="margin-right: 5px;">
            <a href="shareReview" class="btn btn-outline-success menuItem" style="font-weight: bold;">Share a Review</a>
          </li>
          <li class="nav-item" style="margin-right: 5px;">
            <a href="bestReviews" class="btn btn-outline-success menuItem" style="font-weight: bold;">Best Reviews</a>
          </li>
          <li class="nav-item" style="margin-right: 5px;">
            <a href="forum" class="btn btn-outline-success menuItem" style="font-weight: bold;">Forum</a>
          </li>
          <li class="nav-item" style="margin-right: 5px;">
            <a href="terms" class="btn btn-outline-success menuItem" style="font-weight: bold;">Terms & Conditions</a>
          </li>
          <li class="nav-item">
            <button type="button" class="btn btn-outline-success menuItem" style="font-weight: bold;" data-toggle="modal" data-target="#exampleModalCenter">Subscribe</button>
          </li>
          
        </ul>
    
      </div>
     
      
    </div>
  </nav>
  <!-- /.navbar -->

  <div class="content-wrapper" style="padding-bottom: 10px;">
  <section class="content">
    <!-- <br> -->

      <!-- MODAL FOR SUBSCRIBE FORM -->
      <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true" data-backdrop="static" data-keyboard="false">
          <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Subscribe Now to get all the updates</h5>
              </div>
              <form method="POST">
              <div class="modal-body">
                  <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="ENTER YOUR NAME" name="name" required>
                    <div class="input-group-append">
                      <div class="input-group-text">
                        <span class="fas fa-user"></span>
                      </div>
                    </div>
                  </div>
                  <div class="input-group mb-3">
                    <input type="email" class="form-control" placeholder="ENTER YOUR EMAIL" name="bEmail" required>
                    <div class="input-group-append">
                      <div class="input-group-text">
                        <span class="fas fa-envelope"></span>
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
<script>
  window.onscroll = function() {myFunction()};

  var header = document.getElementById("myHeader");
  var sticky = header.offsetTop;

  function myFunction() {
    if (window.pageYOffset > sticky) {
      header.classList.add("sticky");
    } else {
      header.classList.remove("sticky");
    }
  }
//   $('#exampleModalCenter').modal({
//     backdrop: 'static',
//     keyboard: false
// })

    
</script>

