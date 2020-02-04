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
    $reference = $_POST['referEmail'];
    $sql = "SELECT * FROM ATHENEUM_STUDENT WHERE EMAIL = '$email'";
    $result = mysqli_query($link,$sql);
    $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
    $referals = $row['REFERALS'];
    $userName = $row['NAME'];
    if ($referals == null) {
      $referals = array_filter($referals);
      $referals = implode(",", $reference);
    }else{
      $referals = explode (",", $referals);
      $referals = array_merge($referals, $reference);
      $referals = array_filter($referals);
      $referals = implode(",", $referals);
    }
    $sql = "UPDATE ATHENEUM_STUDENT SET REFERALS = '$referals' WHERE EMAIL='$email'";
    $result = mysqli_query($link, $sql);
    if($result){
      $to = $reference;
      $subject = "Referal From ".$userName;
      $message = "
      <html>
      <head>
      <title>Welcome student</title>
      </head>
      <body>
      <h3>".$userName ." has sent you a referal of Atheneum Global Course. Hurry up and take admission to get attractive offers.</h3>
      <p><a href='atheneumglobal.education/enroll'>Click here to see our courses.</a></p>
      </body>
      </html>
      ";
      // $headers = "MIME-Version: 1.0" . "\r\n";
      $headers = "MIME-Version: 1.0" . "\r\n";
      $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

      // More headers
      $headers .= 'From: Atheneum Global<noreply@atheneumglobal.com>' . "\r\n";
      if (mail($to,$subject,$message,$headers)) {
        echo '<div class="alert alert-success">Successfully referred. </div>';
      }else{
        $GLOBALS['alert_info'] .= DaddToBsAlert("Error occured! Please try again!".$errorm);
      }
      echo "<script>location.reload()</script>";
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
          <h1 class="display-7 text-center">Refer & Earn Program</h1>
        
          <!-- Dashboard Actions -->

          <!-- ---------------USER DETAILS TABLE ------------- -->

          <div class="row">
          <div class="col-md-10 col-lg-10 col-sm-12 ml-auto mr-auto">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Give references</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
               
                <form method="POST">
                  <div class="row">
                    <div class="col-md-4 col-lg-4 col-sm-12">
                      <div class="input-group mb-3">
                        <input type="email" name="referEmail[]" placeholder="Give an Email" class="form-control" required>
                        <div class="input-group-append">
                          <div class="input-group-text">
                            <span class="fas fa-envelope"></span>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-4 col-lg-4 col-sm-12">
                      <div class="input-group mb-3">
                        <input type="email" name="referEmail[]" placeholder="Give an Email" class="form-control">
                        <div class="input-group-append">
                          <div class="input-group-text">
                            <span class="fas fa-envelope"></span>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-4 col-lg-4 col-sm-12">
                      <div class="input-group mb-3">
                        <input type="email" name="referEmail[]" placeholder="Give an Email" class="form-control">
                        <div class="input-group-append">
                          <div class="input-group-text">
                            <span class="fas fa-envelope"></span>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-6 col-sm-12 ml-auto mr-auto">
                    <input type="submit" name="submit" class="btn btn-success btn-block" value="Submit Reference">
                    </div>
                </form><div id="fb-root"></div>
                <!-- <button style="font-size:24px">Button <i class="fa fa-whatsapp"></i></button> -->
              </div> 
              <div class="card-header">
                  <h3 class="card-title">Share <i class="fas fa-share"></i></h3>
              </div>
              <div class="card-body">
               <div class="btn btn-primary" data-href="https://atheneumglobal.education/" data-layout="button_count" data-size="large"><a href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fatheneumglobal.education%2F&amp;src=sdkpreparse&quote=Hey%20I%20have%20signed%20up%20for%20Atheneum%20Global%20College%20and%20got%20exciting%20rewards.%20You%20can%20try%20as%20well." class="fb-xfbml-parse-ignore"><i class="fa fa-facebook" style="font-size:20px; color: #fff;"></i></a></div>
                <!-- <a href="https://wa.me/?text=I%20found%20a%20great%20website.%20Check%20out%20this%20link%20https%3A%2F%2Fwww.example.com%2F">Share on WhatsApp</a> -->
                <a href="whatsapp://send?text=Hey I have signed up for Atheneum Global College and got exciting rewards. You can try as well. Go to-> https://atheneumglobal.education" data-action="share/whatsapp/share"><button class="btn btn-success"><i class="fa fa-whatsapp" style="font-size:20px;"></i></button></a>
                <a href="sms:?body=Hey I have signed up for Atheneum Global College and got exciting rewards. You can try as well. Go to-> https://atheneumglobal.education" class="btn btn-warning"><i class="fas fa-envelope" style="font-size:20px; color: #fff;"></i></a>
              </div>

              <!-- /.card-body -->
            </div>
            <!-- /.card -->
            <div class="card card-success card-tabs">
      <div class="card-header p-0 pt-1">
        <ul class="nav nav-tabs" id="custom-tabs-one-tab" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" id="custom-tabs-one-home-tab" data-toggle="pill" href="#custom-tabs-one-home" role="tab" aria-controls="custom-tabs-one-home" aria-selected="true">My referals</a>
          </li>
        </ul>
      </div>
      <div class="card-body">
        <div class="tab-content" id="custom-tabs-one-tabContent">
          <div class="tab-pane fade show active" id="custom-tabs-one-home" role="tabpanel" aria-labelledby="custom-tabs-one-home-tab">
              <div class=" table-responsive p-0">
                <table class="table table-hover text-nowrap" id="franchiseList">
                  <thead>
                    <tr>
                      <th scope="col">Serial No</th>
                      <th scope="col">Email ID's</th>
                      <th scope="col">Registered</th>
                      <th scope="col">Enrolled</th>
                    </tr>
                  </thead>
                    <tbody>
                    <?php 
                      $referals = $row['REFERALS'];
                      $referals = explode (",", $referals);
                      $sql = "SELECT * FROM ATHENEUM_STUDENT";
                      $result = mysqli_query($link,$sql);
                      $registeredUser = array();
                      $enrolledUser = array();
                      if(mysqli_num_rows($result)>0){
                        while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
                          $userEmail = $row['EMAIL'];
                          $status = $row['STATUS'];
                          if($userEmail != $email){
                            if (in_array($userEmail, $referals)){

                              array_push($registeredUser, $userEmail);
                              
                            }
                            if ($status == "ENROLLED IN COURSE") {
                              array_push($enrolledUser, $userEmail);
                            }
                          }
                          
                        }
                      }
                      if ($referals == null) {
                        echo '<div class="alert alert-warning">No reference yet! </div>';
                      }else{
                        
                        foreach ($referals as $key => $value) { ?>
                          <tr>
                            <td scope="col"><?php echo $key+1 ?></td>
                            <td scope="col"><?php echo $value ?></td>
                            <td scope="col"><?php if(in_array($value, $registeredUser)) echo '<i class="fas fa-check-circle"></i>';else echo '<i class="fa fa-times-circle-o" aria-hidden="true"></i>' ?></td>
                            <td scope="col"><?php if(in_array($value, $enrolledUser)) echo '<i class="fas fa-check-circle"></i>';else echo '<i class="fa fa-times-circle-o" aria-hidden="true"></i>' ?></td>
                          </tr>
                        <?php }
                        
                      }
                     ?>                
                    
                  </tbody>
                </table>
              </div>
          </div>
          <!--  -->
        </div>
      </div>
      <!-- /.card -->
    </div>
          </div>
        </div>
          

        </div>
      </div>
</div>
<?php else: ?>
  <h1 class="text-center">Please Signin</h1>

<?php endif; ?>