<?php
 if(isset($_SESSION['LoggedIn'])){
 }
 else $_SESSION['LoggedIn']=false;
 if(isset($_POST["s_Hash"]) && $_POST["s_Hash"]== $_SESSION['s_Hash']){

  // echo $GLOBALS['alert_info']; $_SESSION['redirectOnNextLoad'] ="hh"; echo $_SESSION['redirectOnNextLoad'];
  $link = new mysqli(MYSQL_HOST,MYSQL_USER,MYSQL_PASS,MYSQL_DB);
  $link->set_charset("utf8");

  //SIGNUP PHP CODE

  if (isset($_POST['formName']) && $_POST['formName']=="userSignUp"){

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
  


  // SIGN IN PHP CODE

  if (isset($_POST['formName']) && $_POST['formName']=="userSignIn"){
   

          $email = $_POST['email'];

          $password = $_POST['password'];

          $password = md5($password);
          // echo $password;

          $sql = "SELECT * FROM USERS WHERE `EMAIL` = '$email'";
          $result = mysqli_query($link, $sql);
          $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
          $results = mysqli_num_rows($result);
          if(!$results){
              // echo '<div class="alert alert-danger">No Such User</div>';
              $GLOBALS['alert_info'] .= DaddToBsAlert("No Such User!");
          }else{
                $passwordDB = $row['PASSWORD'];
                if($password == $passwordDB){
                    // echo '<div class="alert alert-success"> Welcome to Beanstalk Franchise Portal </div>';
                    $_SESSION["LoggedIn"] = true;
                    $_SESSION["user"] = $email;
                    $_SESSION["userId"] = $row['UNI_ID'];
                    $_SESSION["userName"] = $row['NAME'];
                    echo "<script>
                        window.history.go(-2);
                      </script>";
                }else{
                    // echo '<div class="alert alert-danger"> Credential did not match! </div>';
                    $GLOBALS['alert_info'] .= DaddToBsAlert("Credential did not match!");
                }
                
              }
          }

  if (isset($_POST['formName']) && $_POST['formName']=="adminSignIn"){

          $email = $_POST['email'];

          $password = $_POST['password'];

          $password = md5($password);
          // echo $password;
          echo $email;

          $sql = "SELECT * FROM USERS WHERE `EMAIL` = '$email'";
          $result = mysqli_query($link, $sql);

          $results = mysqli_num_rows($result);
          if(!$results){
              // echo '<div class="alert alert-danger">No Such User</div>';
              $GLOBALS['alert_info'] .= DaddToBsAlert("No Such User!");
          }else{
              $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
              $passwordDB = $row['PASSWORD'];
              $type = $row['TYPE'];
              if($password == $passwordDB && $type== "ADMIN"){
                  // echo '<div class="alert alert-success"> Welcome to Beanstalk Franchise Portal </div>';
                  $_SESSION["LoggedIn"]=true;
                  $_SESSION["userAdmin"] = true;
                  $_SESSION["user"] = $email;
                  $_SESSION["userId"] = $row['UNI_ID'];
                  $_SESSION["userName"] = $row['NAME'];
                  echo "<script>
                        window.location.href='_home';
                      </script>";
              }else{
                  // echo '<div class="alert alert-danger"> Credential did not match! </div>';
                  $GLOBALS['alert_info'] .= DaddToBsAlert("Credential did not match!");
              }

          }

  }

}

?>
