<script>
      if ( window.history.replaceState ) {
          window.history.replaceState( null, null, window.location.href );
      }
</script>
<?php
$link = new mysqli(MYSQL_HOST,MYSQL_USER,MYSQL_PASS,MYSQL_DB);
$link->set_charset("utf8");
$email = $_SESSION["user"];


if(mysqli_connect_error()){
   die("ERROR: UNABLE TO CONNECT: ".mysqli_connect_error());
}
  
 
 ?>
<style type="text/css">
    .carousel-item {
      height: 90vh;
      width: 100%;
      min-height: 500px;
      /*position: absolute;*/
      background: no-repeat  scroll;
      -webkit-background-size: cover;
      -moz-background-size: cover;
      -o-background-size: cover;
      background-size: cover;
      opacity: 0.8;
      background-color: black;
      filter: brightness(80%);
    }


  .navbar {
    height: 60px;
    background: transparent;
    border: none;
    color: white;
    z-index: 100;
    transition: background-color 1s ease 0s;
  }

.navbar.solid {
  background: #fff;
  transition: background-color 1s ease 0s;
  box-shadow: 0 0 4px grey;

  .navbar-brand {
    color: #C57ED3;
    transition: color 1s ease 0s;
  }

}

.heading{
  padding: 20px;
  border: 2px black solid;
  border-radius: 60%;

}
    
    /*.imageG{
      margin-top: 20px;
    }*/
  </style>

  <?php 
    if (isset($_POST['subscribe'])) {
      $fName = $_POST['fName'];
      $lName = $_POST['lName'];
      $bEmail = $_POST['bEmail'];
      $phone = $_POST['pNumber'];

      $stmt = $link->prepare("INSERT INTO SUBSCRIBERS (`FIRST_NAME`, `LAST_NAME`, `PHONE`, `EMAIL`) VALUES (?, ?, ?, ?)");
      $stmt->bind_param("ssss", $fName, $lName, $phone, $bEmail);
      if ($stmt->execute()) { 
        echo '<div class="alert alert-success">You are now subscribed!</div>';
      }else{
        echo '<div class="alert alert-warning">'.mysqli_error($link).'</div>';
      }
    }

   ?>
  <script type="text/javascript">
    $(document).ready(function(){ 
      $('.goDown').click(function(){
      $("html, body").animate({ scrollTop: $(document).height() }, 1000);
    });
      $(window).on('load',function(){
        $('#exampleModalCenter').modal('show');
    });
     
  });

  </script>

<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
      <div class="carousel-item bgImage active" style="background-image: url('/IMAGES/home/img1.jpg')">
        <div class="carousel-caption">
        <h1>We are E-Quick Review</h1>
        <h2>Start Sharing Reviews</h2>
           <!-- <button class="btn btn-success">Down</button> -->
        </div>
      </div>
      <!-- Slide Two - Set the background image for this slide in the line below -->
      <div class="carousel-item bgImage" style="background-image: url('/IMAGES/home/img2.jpg')">
        <!-- <div class="mask rgba-black-strong"></div> -->
        <div class="carousel-caption d-none d-md-block">
          <h1>We are E-Quick Review</h1>
          <h2>Start requesting for Reviews</h2>
        </div>
      </div>
      <!-- Slide One - Set the background image for this slide in the line below -->
      <div class="carousel-item bgImage" style="background-image: url('/IMAGES/home/img3.jpg')">
        <div class="carousel-caption d-none d-md-block">
          <h1>We are E-Quick Review</h1>
          <h2>Start Asking Questions</h2>
        </div>
      </div>
      
      
      <!-- Slide Three - Set the background image for this slide in the line below -->
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>

  </div>
  <br>
  <div class="container">
    <h2 class="text-center heading">Welcome to E-quick Review</h2>
    <p class="text-justify" style="font-size: 20px;">Creating an ecosystem relationship between buyer & seller with the best product review.
                Building an opportunity to earn through honest reviews using affiliate links. Be a part of earning
                through reviews & affiliate marketing. Grow your business, earn from your reviews.</p>
  </div>

  <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Subscribe Now to get all the updates</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <form method="POST">
              <div class="modal-body">
                  <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="First Name" name="fName" required>
                    <div class="input-group-append">
                      <div class="input-group-text">
                        <span class="fas fa-user"></span>
                      </div>
                    </div>
                  </div>
                  <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Last Name" name="lName" required>
                    <div class="input-group-append">
                      <div class="input-group-text">
                        <span class="fas fa-user"></span>
                      </div>
                    </div>
                  </div>
                  <div class="input-group mb-3">
                    <input type="email" class="form-control" placeholder="Best Email" name="bEmail" required>
                    <div class="input-group-append">
                      <div class="input-group-text">
                        <span class="fas fa-envelope"></span>
                      </div>
                    </div>
                  </div>
                  <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Phone Number" name="pNumber" required>
                    <div class="input-group-append">
                      <div class="input-group-text">
                        <span class="fas fa-phone"></span>
                      </div>
                    </div>
                  </div>
              </div>
              <div class="modal-footer">
                <button type="submit" name="subscribe" class="btn btn-primary">Subscribe Now</button>
              </div>
              </form>
            </div>
          </div>
        </div>