<?php
 if(isset($_SESSION['LoggedIn'])){
 }
 else $_SESSION['LoggedIn']=false;
if(isset($_POST["s_Hash"]) && $_POST["s_Hash"]== $_SESSION['s_Hash']){

  // echo $GLOBALS['alert_info']; $_SESSION['redirectOnNextLoad'] ="hh"; echo $_SESSION['redirectOnNextLoad'];
  $link = new mysqli(MYSQL_HOST,MYSQL_USER,MYSQL_PASS,MYSQL_DB);
  $link->set_charset("utf8");

  //SIGNUP PHP CODE

  if (isset($_POST['formName']) && $_POST['formName']=="studentSignUp"){

          $name =  $_POST['name'];
          $email = $_POST['email'];
          $phone = $_POST['phone'];
          $password = $_POST['password1'];
          $password2 = $_POST['password2'];
          $uniqueUserId = D_create_UserId();
          if ($password != $password2) {
              // echo '<div class="container"><div class="alert alert-danger">Password does not match</div></div>';
            $GLOBALS['alert_info'] .= DaddToBsAlert("Passwords are not same!");

          }else{
            $sql = "SELECT * FROM ATHENEUM_STUDENT WHERE EMAIL = '$email'";
            $result = mysqli_query($link, $sql);
            if(mysqli_num_rows($result)>0){
              $GLOBALS['alert_info'] .= DaddToBsAlert("You are already registered. Please Sign In!");
            }else{
              $password = md5($password);
              $stmt = $link->prepare("INSERT INTO ATHENEUM_STUDENT (`UNI_ID`, `NAME`, `PHONE`, `EMAIL`, `PASSWORD`, `STATUS`) VALUES (?, ?, ?, ?, ?, 'VERIFICATION PENDING')");
              $stmt->bind_param("sssss", $uniqueUserId, $name, $phone, $email, $password);
              if ($stmt->execute()) {        
                $verificationCode = D_create_UserId(4);
                $sql = "UPDATE ATHENEUM_STUDENT SET VERIFICATION_CODE = '$verificationCode' WHERE EMAIL = '$email'";
                $result = mysqli_query($link, $sql);
                $to = $_POST['email'];
                $subject = "VERIFICATION DETAILS";
                $message = "
                <html>
                <head>
                <title>Welcome student</title>
                </head>
                <body>
                <h3>Go to the below link to verify your email.</h3>
                <p><a href='user.atheneumglobal.com/verifyEmail?user=".$uniqueUserId."&verification=".$verificationCode."'>Click here to verify your email.</a></p>

                </body>
                </html>
                ";
                // $headers = "MIME-Version: 1.0" . "\r\n";
                $headers = "MIME-Version: 1.0" . "\r\n";
                $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

                // More headers
                $headers .= 'From: Atheneum Global<noreply@atheneumglobal.com>' . "\r\n";
                if (mail($to,$subject,$message,$headers)) {
                  $GLOBALS['alert_info'] .= DaddToBsAlert("Verification mail has been sent to your mail id. Please check and verify your email!");
                }else{
                  $GLOBALS['alert_info'] .= DaddToBsAlert("Error occured! Please try again!".$errorm);
                }
                
              }else{
                $errorm = "Failed-> ".mysqli_error($link);
                $GLOBALS['alert_info'] .= DaddToBsAlert("Error occured! Please try again!".$errorm);
              }

            }

          }

          
          // echo $password;


  }


  // SIGN IN PHP CODE

  if (isset($_POST['formName']) && $_POST['formName']=="studentSignIn"){

          $email = $_POST['email'];

          $password = $_POST['password'];



          $password = md5($password);
          // echo $password;

          $sql = "SELECT * FROM ATHENEUM_STUDENT WHERE `EMAIL` = '$email'";
          $result = mysqli_query($link, $sql);

          $results = mysqli_num_rows($result);
          if(!$results){
              // echo '<div class="alert alert-danger">No Such User</div>';
              $GLOBALS['alert_info'] .= DaddToBsAlert("No Such User!");
          }else{
              $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
              if($row['STATUS'] == "VERIFICATION PENDING"){
                $verificationCode = D_create_UserId(4);
                $sql = "UPDATE ATHENEUM_STUDENT SET VERIFICATION_CODE = '$verificationCode' WHERE EMAIL = '$email'";
                $result = mysqli_query($link, $sql);
                $to = $_POST['email'];
                $subject = "VERIFICATION DETAILS";
                $message = "
                <html>
                <head>
                <title>Welcome student</title>
                </head>
                <body>
                <h3>Go to the below link to verify your email.</h3>
                <p><a href='user.atheneumglobal.com/verifyEmail?user=".$uniqueUserId."&verification=".$verificationCode."'>Click here to verify your email.</a></p>

                </body>
                </html>
                ";
                // $headers = "MIME-Version: 1.0" . "\r\n";
                $headers = "MIME-Version: 1.0" . "\r\n";
                $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

                // More headers
                $headers .= 'From: Atheneum Global<noreply@atheneumglobal.com>' . "\r\n";
                if (mail($to,$subject,$message,$headers)) {
                  $GLOBALS['alert_info'] .= DaddToBsAlert("Verification mail has been sent to your mail id. Please check and verify your email!");
                }else{
                  $GLOBALS['alert_info'] .= DaddToBsAlert("Error occured! Please try again!".$errorm);
                }
                
              }else if($row['STATUS'] == "VERIFIED"){
                $passwordDB = $row['PASSWORD'];
                if($password == $passwordDB){
                    // echo '<div class="alert alert-success"> Welcome to Beanstalk Franchise Portal </div>';
                    $GLOBALS['alert_info'] .= DaddToBsAlert("Welcome to atheneum global user dashboard");
                    $_SESSION["LoggedIn"]=true;
                    $_SESSION["user"] = $email;
                    $_SESSION["userId"] = $row['UNI_ID'];
                    $_SESSION["userName"] = $row['NAME'];
                    echo "<script>
                        window.location.href='/';
                      </script>";
                }else{
                    // echo '<div class="alert alert-danger"> Credential did not match! </div>';
                    $GLOBALS['alert_info'] .= DaddToBsAlert("Credential did not match!");
                }
              }
              



          }




  }

  if (isset($_POST['formName']) && $_POST['formName']=="adminSingninFrom"){

          $email = $_POST['email'];

          $password = $_POST['password'];



          $password = md5($password);
          // echo $password;

          $sql = "SELECT * FROM BS_USER WHERE `USER_EMAIL` = '$email'";
          $result = mysqli_query($link, $sql);

          $results = mysqli_num_rows($result);
          if(!$results){
              // echo '<div class="alert alert-danger">No Such User</div>';
              $GLOBALS['alert_info'] .= DaddToBsAlert("No Such User!");
          }else{
              $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
              $passwordDB = $row['USER_PASSWORD'];
              $type = $row['BS_USER_TYPE'];
              if($password == $passwordDB && $type== "ADMIN"){
                  // echo '<div class="alert alert-success"> Welcome to Beanstalk Franchise Portal </div>';
                  $GLOBALS['alert_info'] .= DaddToBsAlert("Welcome to Beanstalk Franchise Portal!");
                  $_SESSION["LoggedIn"]=true;
                  $_SESSION["userAdmin"] = true;
                  $_SESSION["user"] = $email;
                  $_SESSION["franId"] = $row['BS_USER_ID'];
                  $_SESSION["userName"] = $row['USER_FULL_NAME'];
              }else{
                  // echo '<div class="alert alert-danger"> Credential did not match! </div>';
                  $GLOBALS['alert_info'] .= DaddToBsAlert("Credential did not match!");
              }



          }




  }

}


?>
