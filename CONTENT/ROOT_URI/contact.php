<?php 
$link = new mysqli(MYSQL_HOST,MYSQL_USER,MYSQL_PASS,MYSQL_DB);
$link->set_charset("utf8");
if(mysqli_connect_error()){
	die("ERROR: UNABLE TO CONNECT: ".mysqli_connect_error());
}
if (isset($_POST['submit'])) {
	echo '<div class="container"><div class="alert alert-success">Thanks for your response!</div></div>';
}
 ?>


<div class="container">
	<div class="row">
      <div class="col-md-12 ml-auto mr-auto">
      	<div class="card text-center">
      		<div class="card-header"><h4>Reach out to us</h4></div>
      		<div class="card-body">
      			<h4>Contact Details:- </h4>
      			<h5><b>You can mail us at:- <i>its@equickreview.com</i></b></h5>
      			<h5>--------------------- OR ---------------------</h5>
      			<h4>Send Us a Message</h4>
      			<div class="col-md-6 ml-auto mr-auto">
      			<form method="POST">
                  <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Name" name="Name" required>
                    <div class="input-group-append">
                      <div class="input-group-text">
                        <span class="fas fa-user"></span>
                      </div>
                    </div>
                  </div>
                  <div class="input-group mb-3">
                    <input type="email" class="form-control" placeholder="Best Email" name="email" required>
                    <div class="input-group-append">
                      <div class="input-group-text">
                        <span class="fas fa-envelope"></span>
                      </div>
                    </div>
                  </div>
                  <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Phone Number" name="number" required>
                    <div class="input-group-append">
                      <div class="input-group-text">
                        <span class="fas fa-phone"></span>
                      </div>
                    </div>
                  </div>
                  <div class="input-group mb-3">
                    <textarea rows="3" class="form-control"  placeholder="Enter your message" name="message" required></textarea>
                  </div>
                  <input type="submit" name="submit" value="Submit" class="btn btn-success">
              </form>
              </div>
      			
      		</div>
      	</div>
      </div>
     </div>
</div>
