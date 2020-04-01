<?php



 if(isset($_SESSION['LoggedIn'])){
 }
 else $_SESSION['LoggedIn']=false;
 if(isset($_POST["s_Hash"]) && $_POST["s_Hash"]== $_SESSION['s_Hash']){

  // echo $GLOBALS['alert_info']; $_SESSION['redirectOnNextLoad'] ="hh"; echo $_SESSION['redirectOnNextLoad'];
  $link = new mysqli(MYSQL_HOST,MYSQL_USER,MYSQL_PASS,MYSQL_DB);
  $link->set_charset("utf8");

  //SIGNUP PHP CODE




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
