<script>
  if ( window.history.replaceState ) {
      window.history.replaceState( null, null, window.location.href );
  }
</script>
<?php 
 $link = new mysqli(MYSQL_HOST,MYSQL_USER,MYSQL_PASS,MYSQL_DB);
  $link->set_charset("utf8");

 ?>


<div class="container">
<div class="row">
<div class="col-md-6 col-lg-6 col-sm-12 ml-auto mr-auto">
<div class="">
  <div class="register-logo">
    <a href="https://atheneumglobal.education"><b>Atheneum Global College</b></a>
  </div>

  <div class="card">
    <div class="card-body login-card-body">
      <?php 
        $userId = $_GET['user'];
        $verification = $_GET['verification'];
        $sql = "SELECT * FROM ATHENEUM_STUDENT WHERE UNI_ID = '$userId' AND VERIFICATION_CODE = '$verification'";
        $result = mysqli_query($link,$sql);
        if(mysqli_num_rows($result)>0){ 
          $sql = "UPDATE ATHENEUM_STUDENT SET STATUS = 'VERIFIED' WHERE UNI_ID = '$userId'";
          $result = mysqli_query($link,$sql);
          if ($result) {
            $_SESSION["LoggedIn"]=true;
            $_SESSION["user"] = $email;
            $_SESSION["userId"] = $row['UNI_ID'];
            $_SESSION["userName"] = $row['NAME'];
            echo '<p class="login-box-msg">Congratulation! Your Mail is verified.</p>';
            echo '<p class="login-box-msg">Please <a href="/">Go to your dashboard</a></p>';
          }
        }else{
          echo '<p class="login-box-msg">Your Mail is not verified.</p>';
          echo '<p class="login-box-msg">Please try again!</p>';
        }
       ?>
      

      
    </div>
    <!-- /.login-card-body -->
  </div>
  <!-- /.card -->
</div>
<!-- /.register-box -->

<!-- jQuery -->
</div>
</div>

</div>