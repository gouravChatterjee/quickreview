<script>
      if ( window.history.replaceState ) {
          window.history.replaceState( null, null, window.location.href );
      }
</script>

<div class="container">
<?php
  if ($GLOBALS['alert_info']!="") {
    echo $GLOBALS['alert_info'];
  }
?>
<div class="row">
<div class="col-md-6 col-lg-6 col-sm-12 ml-auto mr-auto">
<div class="">
  <div class="register-logo">
    <a href=""><b>E - Quick Review</b></a>
  </div>

  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">Sign in to start your session</p>

      <form method="post" enctype="multipart/form-data">
        <input type="hidden" name="s_Hash" value="<?php echo $_SESSION['s_Hash']; ?>">
        <input type="hidden" name="formName" value="adminSignIn">
        <div class="input-group mb-3">
          <input type="email" class="form-control" placeholder="Email" name="email" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control" placeholder="Password" name="password" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="remember">
              <label for="remember">
                Remember Me
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" class="btn btn-primary btn-block">Sign In</button>
          </div>
          <!-- /.col -->
        </div>
      </form>

      <p class="mb-1">
        <a href="forgotpassword">I forgot my password</a>
      </p>
      <p class="mb-0">
        <a href="signUp" class="text-center">Register a new membership</a>
      </p>
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