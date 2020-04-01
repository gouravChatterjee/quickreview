<script>
      if ( window.history.replaceState ) {
          window.history.replaceState( null, null, window.location.href );
      }
</script>
<?php 

$link = new mysqli(MYSQL_HOST,MYSQL_USER,MYSQL_PASS,MYSQL_DB);
$link->set_charset("utf8");
// require 'google-api/vendor/autoload.php';

function saveAccountDataSpreadsheet($name, $email, $phone)
{
    $client = new Google_Client();
    $client->setApplicationName('Google Sheets API PHP Quickstart');
    $client->setScopes(Google_Service_Sheets::SPREADSHEETS);
    $client->setAuthConfig('google-api/credentials.json');
    $client->setAccessType('online');
    $service = new Google_Service_Sheets($client);

    // print_r($service);
    $spreadsheetId = '15AJVokdffYA47levcHTsWDJMrKH4Eb056kKXhLoHHhQ';
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

  if (isset($_POST['register'])){

          $name =  $_POST['name'];
          $email = $_POST['email'];
          $phone = $_POST['phone'];
          $password = $_POST['password1'];
          $password2 = $_POST['password2'];
          $country = $_POST['country'];
          $state = $_POST['state'];
          $uniqueUserId = D_create_UserId();
          if ($password != $password2) {
              // echo '<div class="container"><div class="alert alert-danger">Password does not match</div></div>';
            $GLOBALS['alert_info'] .= DaddToBsAlert("Passwords are not same!");

          }else{
            $sql = "SELECT * FROM USERS WHERE EMAIL = '$email'";
            $result = mysqli_query($link, $sql);
            if(mysqli_num_rows($result)>0){
              $GLOBALS['alert_info'] .= DaddToBsAlert("You are already registered. Please Sign In!");
            }else{
              $password = md5($password);
              $stmt = $link->prepare("INSERT INTO USERS (`UNI_ID`, `NAME`, `PHONE`, `EMAIL`, `PASSWORD`, `COUNTRY`, `STATE`) VALUES (?, ?, ?, ?, ?, ?, ?)");
              $stmt->bind_param("sssssss", $uniqueUserId, $name, $phone, $email, $password, $country, $state);
              if ($stmt->execute()) {
                saveAccountDataSpreadsheet($name, $email, $phone);   
                $_SESSION["LoggedIn"]=true;
                $_SESSION["user"] = $email;
                $_SESSION["userId"] = $uniqueUserId;
                $_SESSION["userName"] = $name;     
                echo "<script>
                        window.history.go(-1);
                      </script>";
              }else{
                $errorm = "Failed-> ".mysqli_error($link);
                $GLOBALS['alert_info'] .= DaddToBsAlert("Error occured! Please try again!".$errorm);
              }

            }

          }
  }
  

 ?>
<div class="container">
<?php
  if ($GLOBALS['alert_info']!="") {
    echo $GLOBALS['alert_info'];
  }
?>

<br>
<div class="row">
<div class="col-md-6 col-lg-6 col-sm-12 ml-auto mr-auto">
<div class="">
  <div class="register-logo">
    <a><b>CREATE YOUR FREE ACCOUNT</b></a>
  </div>
  <div class="card">
    <div class="card-body register-card-body">
      <p class="login-box-msg">Register a new membership</p>
      <form method="post" id="studentSignup" enctype=“multipart/form-data”>
        <input type="hidden" name="s_Hash" value="<?php echo $_SESSION['s_Hash']; ?>">
        <input type="hidden" name="formName" value="userSignUp">
        <div class="input-group mb-3">
          <input type="text" class="form-control" placeholder="Full name" name="name" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="number" class="form-control" placeholder="Phone Number" name="phone" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-phone"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="email" name="email" class="form-control" placeholder="Email" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" name="password1" class="form-control" placeholder="Password" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" name="password2" class="form-control" placeholder="Retype password" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <!-- <div class="row">
          <div class="col-lg-6 col-md-6 col-sm-12">
            <div class="input-group mb-3">
              <select id="country" name ="country" class="form-control" id="sel1"></select>
              <div class="input-group-append">
                <div class="input-group-text">
                  <span class="fas fa-flag"></span>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6 col-md-6 col-sm-12">
            <div class="input-group mb-3">
              <select name ="state" id ="state" class="form-control" id="sel1"></select>
              <div class="input-group-append">
                <div class="input-group-text">
                  <span class="fas fa-state"></span>
                </div>
              </div>
            </div>
          </div>
        </div> -->
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="agreeTerms" name="terms" value="agree" required>
              <label for="agreeTerms">
               I agree to the <a href="terms">terms</a>
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-4">
            <input type="submit" value="REGISTER" name="register" class="btn btn-primary btn-block">
          </div>
          <!-- /.col -->
        </div>
      </form>

     <!--  <div class="social-auth-links text-center">
        <p>- OR -</p>
        <a href="#" class="btn btn-block btn-primary">
          <i class="fab fa-facebook mr-2"></i>
          Sign up using Facebook
        </a>
        <a href="#" class="btn btn-block btn-danger">
          <i class="fab fa-google-plus mr-2"></i>
          Sign up using Google+
        </a>
      </div> -->

      <a href="signIn" class="text-center">I already have a membership</a>
    </div>
    <!-- /.form-box -->
  </div><!-- /.card -->
</div>
<!-- /.register-box -->

<!-- jQuery -->
</div>
</div>


</div>
<script type="text/javascript" src="/JS/countries.js"></script>
<script language="javascript">
  populateCountries("country", "state"); 
</script>