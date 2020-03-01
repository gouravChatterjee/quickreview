<script>
      if ( window.history.replaceState ) {
          window.history.replaceState( null, null, window.location.href );
      }
</script>

<?php 
	$link = mysqli_connect(MYSQL_HOST,MYSQL_USER,MYSQL_PASS,MYSQL_DB);
   $email = $_SESSION["user"];
   // echo $email;
   $sql = "SELECT * FROM USERS WHERE EMAIL = '$email'";

   $result = mysqli_query($link,$sql);

   if($result){
        if(mysqli_num_rows($result)>0){
         $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
         $fullName = $row['NAME'];
          // echo $fullName;
         // $type = $row["BS_USER_TYPE"];
         $phn = $row["PHONE"];
         $email = $row["EMAIL"];
         // $userId = $row["BS_USER_ID"];
        }
    }
 ?>

 <?php if (!$_SESSION['LoggedIn']){
 	header("Location: adminSign");
 }else{
  header("Location: allProducts");
 }


 ?>

<?php if($_SESSION['LoggedIn'] && $_SESSION['userAdmin']): ?>

  <?php 
    $sql = "SELECT * FROM PRODUCT";
    $sql2 = "SELECT * FROM SERVICES";
    $sql3 = "SELECT * FROM QUESTIONS";
    $sql4 = "SELECT * FROM USERS WHERE EMAIL != '$email'";
    $result = mysqli_query($link,$sql);
    $result2 = mysqli_query($link,$sql2);
    $result3 = mysqli_query($link,$sql3);
    $result4 = mysqli_query($link,$sql4);
     if ($result) {
        if(mysqli_num_rows($result)>0){
          $noOfProd = mysqli_num_rows($result);
        }else{
          $noOfProd = 0;
        }
      }

    if ($result2) {
        if(mysqli_num_rows($result2)>0){
          $noOfSer = mysqli_num_rows($result2);
        }else{
          $noOfSer = 0;
        }
      }
      if ($result3) {
        if(mysqli_num_rows($result3)>0){
          $noOfQues = mysqli_num_rows($result3);
        }else{
          $noOfQues = 0;
        }
      }
      if ($result4) {
        if(mysqli_num_rows($result4)>0){
          $noOfUser = mysqli_num_rows($result4);
        }else{
          $noOfUser = 0;
        }
      }


   ?>


<div class="container">
	
	 <div class="row">
        <div class="col-md-12">
          <h1 class="display-4">Admin Dashboard</h1>
          <p class="lead text-muted">Welcome <?php echo $fullName; ?></p>
        <div class="row">
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-primary">
              <div class="inner">
                <h3><?php echo $noOfProd; ?></h3>

                <p>Total Products</p>
              </div>
              <div class="icon">
                <i class="fab fa-product-hunt"></i>
              </div>
              <a href="allProducts" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <h3><?php echo $noOfSer; ?></h3>

                <p>Total Services</p>
              </div>
              <div class="icon">
                <i class="fas fa-signal"></i>
              </div>
              <a href="allServices" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3><?php echo $noOfQues; ?></h3>

                <p>Total Questions asked</p>
              </div>
              <div class="icon">
                <i class="fas fa-graduation-cap"></i>
              </div>
              <a href="forum" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3><?php echo $noOfUser; ?></h3>

                <p>Registered Users</p>
              </div>
              <div class="icon">
                <i class="fas fa-user"></i>
              </div>
              <a href="franchiseeList" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          
        </div>
          <!-- Dashboard Actions -->

          <!-- ---------------USER DETAILS TABLE ------------- -->

          <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Admin Details</h3>

                <div class="card-tools">
                  <!-- <div class="input-group input-group-sm" style="width: 150px;">
                    <input type="text" name="table_search" class="form-control float-right" placeholder="Search">

                    <div class="input-group-append">
                      <button type="submit" class="btn btn-default"><i class="fas fa-search"></i></button>
                    </div>
                  </div> -->
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body table-responsive p-0">
                <table class="table table-hover text-nowrap">
                  <thead>
                    <tr>
                      <th>User Name</th>
                      <th>Email</th>
                      <th>Phone</th>
                      <th>Password</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td><?php echo $fullName; ?></td>
                      <td><?php echo $email; ?></td>
                      <td><?php echo $phn; ?></td>
                      <td><a href="#" class="btn btn-outline-dark" href="javascript:;" data-toggle="modal" data-target="#changePass">
                    <i class="fas fa-user-circle text-info mr-1"></i> Change Password</a></td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">User's Details</h3>
                <div class="card-tools">
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body table-responsive p-0">
                <table class="table table-hover text-nowrap">
                  <thead>
                    <tr>
                      <th>User Name</th>
                      <th>Email</th>
                      <th>Phone</th>
                      
                    </tr>
                  </thead>
                  <tbody>
                    <?php 
                      $sql = "SELECT * FROM USERS WHERE EMAIL != '$email'";
                      $result = mysqli_query($link,$sql);
                      if ($result) {
                         if(mysqli_num_rows($result)>0){
                          while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){ 
                            $uName = $row['NAME'];
                            $uEmail = $row['EMAIL'];
                            $uPhone = $row['PHONE'];
                            echo '<tr>
                            <td>'.$uName.'</td>
                            <td>'.$uEmail.'</td>
                            <td>'.$uPhone.'</td>
                          </tr>';
                          }
                        }
                      }

                     ?>
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>
          

        </div>
      </div>
      <div class="modal fade" id="changePass" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <form method="post" id="forgotpassForm">
                <input type="hidden" name="s_Hash" value="<?php echo $_SESSION['s_Hash']; ?>">
                <input type="hidden" name="FORM_NAME" value="changePasswordForm">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Change Password</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label class="font-weight-bold">New Password <span class="text-danger">*</span></label>
                            <input type="password" name="password1" id="password_1" class="form-control" placeholder="***********" pattern="^\S{6,}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Must have at least 6 characters' : ''); if(this.checkValidity()) form.password_two.pattern = this.value;" required>
                        </div>
                        <div class="form-group">
                            <label class="font-weight-bold">Confirm Password <span class="text-danger">*</span></label>
                            <input type="password" name="password2" id="password_2" class="form-control" pattern="^\S{6,}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Please enter the same Password as above' : '');" placeholder="***********" required>
                        </div>
                        <div class="form-group">
                        </div>
                    </div>
                    <div class="modal-footer">
                      
                        <button type="submit" name="submit" class="btn btn-primary"> Submit</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<?php else: ?>
  <h1 class="text-center">Please Signin</h1>

<?php endif; ?>