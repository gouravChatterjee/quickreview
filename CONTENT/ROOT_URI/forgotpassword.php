<script>
      if ( window.history.replaceState ) {
          window.history.replaceState( null, null, window.location.href );
      }
</script>


<?php 
  $link = mysqli_connect(MYSQL_HOST,MYSQL_USER,MYSQL_PASS,MYSQL_DB);
  if (isset($_POST['submit'])) {
    $email = $_POST['email'];
    $sql = "SELECT * FROM ATHENEUM_STUDENT WHERE EMAIL = '$email'";
    $result = mysqli_query($link, $sql);
    if(!$result){
      echo mysqli_error($link);
    }else{
      if (mysqli_num_rows($result) <1) {
        echo '<div class=container><div class="alert alert-warning">Email does not exist. Please signup!</div></div>';
      }else{
        $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
        if($row['PASSWORD']!=null){
          $autoPassword = D_create_UserId(6);
          $password = md5($autoPassword);
          $sql = "UPDATE ATHENEUM_STUDENT SET PASSWORD = '$password' WHERE EMAIL = '$email'";
          $result = mysqli_query($link, $sql);
          if ($result) {
            $to = $email;
            $subject = "Login Details";
            $message = "
            <html>
            <head>
            <title>Welcome student</title>
            </head>
            <body>
            <h3>Welcome to Atheneum Global College</h3>
            <h3>Login Details:-</h3>
            <h4>Email Id:- ".$email."</h4>
            <h4>Password:- ".$autoPassword."</h4>
            <h4>Click <a href='https://user.atheneumglobal.com/signIn'>here</a> to login.</h4>
            </body>
            </html>
            ";
            $headers = "MIME-Version: 1.0" . "\r\n";
            $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
            // More headers
            $headers .= 'From: Atheneum Global<noreply@atheneumglobal.com>' . "\r\n";
            if (mail($to,$subject,$message,$headers)) {
              echo '<div class=container><div class="alert alert-success">Password sent to your Email ID!</div></div>';
            }else{
              echo '<div class=container><div class="alert alert-warning">Error Occured!</div></div>';
            }
          }
        }else{
          echo '<div class=container><div class="alert alert-warning">Password does not exists! Please go <a href="noPassword">here</a></div></div>';
        }
      }
    }
  }
?>
 <?php if ($_SESSION['LoggedIn']){
  header("Location: _home");
 }


 ?>

<?php if(!$_SESSION['LoggedIn']): ?>

<div class="container">
  
   <div class="row">
        <div class="col-md-12">
         <div class="register-logo">
          <a href="https://atheneumglobal.education"><b>Atheneum Global College</b></a>
        </div>
        
          <!-- Dashboard Actions -->

          <!-- ---------------USER DETAILS TABLE ------------- -->

          <div class="row">
          <div class="col-md-6 col-lg-6 col-sm-12 ml-auto mr-auto">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Forgot Password</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <form method="POST">
                  <div class="row">
                    <div class="col-md-12 col-lg-12 col-sm-12">
                      <div class="input-group mb-3">
                        <input type="email" name="email" placeholder="Enter registered email" class="form-control" required>
                        <div class="input-group-append">
                          <div class="input-group-text">
                            <span class="fas fa-envelope"></span>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-6 col-sm-12 ml-auto mr-auto">
                    <input type="submit" name="submit" class="btn btn-success btn-block" value="Get Password">
                    </div>
                </form>
                <!-- <button style="font-size:24px">Button <i class="fa fa-whatsapp"></i></button> -->
              </div> 

              <!-- /.card-body -->
            </div>
            <!-- /.card -->

      <!-- /.card -->
    </div>
  </div>
</div>
  

</div>
</div>


<?php endif; ?>