<script>
      if ( window.history.replaceState ) {
          window.history.replaceState( null, null, window.location.href );
      }
</script>

<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v5.0"></script>

<?php 
  $link = mysqli_connect(MYSQL_HOST,MYSQL_USER,MYSQL_PASS,MYSQL_DB);
  $email = $_SESSION["user"];
  if (isset($_POST['submit'])) {
    $password1 = $_POST['password1'];
    $password2 = $_POST['password2'];
    if ($password1 != $password2) {
      echo '<div class="container"><div class="alert alert-danger">Passwords are not same</div></div>';
    }else{
      $password = md5($password1);
      $sql = "UPDATE ATHENEUM_STUDENT SET PASSWORD = '$password' WHERE EMAIL='$email'";
      $result = mysqli_query($link, $sql);
      if($result){
        echo '<div class="container"><div class="alert alert-success">Password is changed successfully!</div></div>';
      }else{
        echo '<div class="container"><div class="alert alert-warning">Please try again!</div></div>';
      }
    }
  }
?>
 <?php if (!$_SESSION['LoggedIn']){
  header("Location: signIn");
 }


 ?>

<?php if($_SESSION['LoggedIn']): ?>

<div class="container">
  
   <div class="row">
        <div class="col-md-12">
          <h1 class="display-7 text-center">Change Password</h1>
        
          <!-- Dashboard Actions -->

          <!-- ---------------USER DETAILS TABLE ------------- -->

          <div class="row">
          <div class="col-md-6 col-lg-6 col-sm-12 ml-auto mr-auto">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Change Password</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <form method="POST">
                  <div class="row">
                    <div class="col-md-12 col-lg-12 col-sm-12">
                      <div class="input-group mb-3">
                        <input type="password" name="password1" placeholder="Enter Password" class="form-control" required>
                        <div class="input-group-append">
                          <div class="input-group-text">
                            <span class="fas fa-lock"></span>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-12 col-lg-12 col-sm-12">
                      <div class="input-group mb-3">
                        <input type="password" name="password2" placeholder="Confirm password" class="form-control" required>
                        <div class="input-group-append">
                          <div class="input-group-text">
                            <span class="fas fa-lock"></span>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-6 col-sm-12 ml-auto mr-auto">
                    <input type="submit" name="submit" class="btn btn-success btn-block" value="Change Password">
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

<?php else: ?>
  <h1 class="text-center">Please Signin</h1>

<?php endif; ?>