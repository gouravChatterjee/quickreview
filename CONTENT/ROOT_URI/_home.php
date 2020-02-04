<script>
      if ( window.history.replaceState ) {
          window.history.replaceState( null, null, window.location.href );
      }
</script>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v5.0"></script>
<?php 
	$link = mysqli_connect(MYSQL_HOST,MYSQL_USER,MYSQL_PASS,MYSQL_DB);
  $email = $_SESSION["user"];
  $userId = $_SESSION["userId"];
  $sql = "SELECT * FROM ATHENEUM_STUDENT WHERE UNI_ID = '$userId'";
  $result = mysqli_query($link,$sql);

 if($result){
      if(mysqli_num_rows($result)>0){
        $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
        $userName = $row["NAME"];
        $email = $row["EMAIL"];
        $phone = $row["PHONE"];
        $programName = $row['PROGRAM_NAME'];
        $programType = $row['PROGRAM_TYPE'];
      }
  }
  if (isset($_POST['flag'])) {
    $image = $_FILES['propic']['name'];
    $imgName = "propic.webp";
    mkdir("CONTENT/UPLOADS/USERS/".$userId."/",  0755, true);
    $target = "CONTENT/UPLOADS/USERS/".$userId."/".$imgName;
    if (move_uploaded_file($_FILES['propic']['tmp_name'], $target)) {
      // $msg = "Image uploaded successfully";
      echo '<div class=container><div class="alert alert-success">Successfully updated profile picture</div></div>';
    }else{
      echo '<div class=container><div class="alert alert-danger">Error occured! Please try again!</div></div>';
      
    }
  }
 ?>

 <?php if (!$_SESSION['LoggedIn']){
 	header("Location: signIn");
 }


 ?>

<?php if($_SESSION['LoggedIn']): ?>

<div class="container">
  <div id="fb-root"></div>
	
	 <div class="row">
        <div class="col-md-12">
          <h1 class="display-7">Student Dashboard</h1>
          <div class="user">
            <?php 
              if (file_exists("CONTENT/UPLOADS/USERS/".$userId."/propic.webp")) { 
               echo '<img src="CONTENT/UPLOADS/USERS/'.$userId.'/propic.webp" style="border-radius: 50%; border: 1px solid" height="80px" width="80px;">';
             }else{ ?>
                <img src="https://lh3.googleusercontent.com/proxy/-E_xTfSYkd31TEwVQ1KYQsM5guSl3nytWQnn7801uYkPvC--lbF8hdnDsmptvmn88SdkNgf6oIoVa1bvq0gLcGy7" style="border-radius: 50%; border: 1px solid" height="80px" width="80px;">
             <?php } ?>
            <p class="lead text-muted">Welcome <?php echo $userName; ?></p>
            <a href="#" class="btn btn-warning" id="upload_pro"><i class="fas fa-user"></i>&nbsp;Upload Profile Picture</a>
            <a href="changePassword" class="btn btn-danger"><i class="fas fa-lock"></i>&nbsp;Chnage Password</a>
                <!-- <a href="changePassword" class="btn btn-warning"><i class="fas fa-user"></i>&nbsp;Update Details</a> -->
          </div>
          <br>
          <!-- FACEBOOK SHARE -->


          <!-- FACEBOOK SHARE -->

          <!-- Dashboard Actions -->

          <!-- ---------------USER DETAILS TABLE ------------- -->

          <div class="row">
          <div class="col-12 ml-auto mr-auto">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Course Details</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
               
                <?php 
                if ($programType == null) { ?>
                  <h4 class='card-text'> You are not registered for any courses.</h4>
                  <a href="https://atheneumglobal.education/enroll" class="btn btn-lg btn-primary">Enroll Now</a>

                <?php }else{ ?>
                  <h4><b>Program type:- </b> <?php echo $programType; ?></h4>
                  <h4><b>Program Name:- </b> <?php echo $programName; ?></h4>
                  <h4><b>Course User Id:- </b> <?php echo $email; ?></h4>
                  <h4><b>Course Password:- </b> <?php echo 'password'; ?></h4>
                  <h4><b>Course Link:- </b></h4> <a href="https://learn.atheneumglobal.education" class="btn btn-success">My Courses <i class="fas fa-external-link-alt"></i></a>
                <?php }

                 ?>
              </div> 
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">User Details</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
               
                <div class="row">
                  <div class="col">
                    <h5><b>User Name:- </b><?php echo $userName; ?></h5>
                  </div>
                  <div class="col">
                    <h5><b>Email:- </b><?php echo $email; ?></h5>
                  </div>
                  <div class="col">
                    <h5><b>Phone:- </b><?php echo $phone; ?></h5>
                  </div>
                </div>
              </div> 
              <!-- /.card-body -->
            </div>
          </div>
        </div>

        <form id="inputForm9" method="POST" enctype="multipart/form-data">
            <input type="hidden" name="size" value="1000000">
            <input type="hidden" name="flag" value="1000000">
           <input id="upload1" type="file" style="display: none; color: inherit;" name="propic"
           onchange="form.submit()" />
       </form>
          

        </div>
      </div>
</div>
<?php else: ?>
  <h1 class="text-center">Please Signin</h1>

<?php endif; ?>
<script type="text/javascript">
   $(function(){
      $("#upload_pro").on('click', function(e){
          e.preventDefault();
          $("#upload1:hidden").trigger('click');
      });
    });
</script>
