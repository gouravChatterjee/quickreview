<script>
      if ( window.history.replaceState ) {
          window.history.replaceState( null, null, window.location.href );
      }
</script>


<?php

$link = new mysqli(MYSQL_HOST,MYSQL_USER,MYSQL_PASS,MYSQL_DB);
$link->set_charset("utf8");

if(mysqli_connect_error()){
	die("ERROR: UNABLE TO CONNECT: ".mysqli_connect_error());
}

if (isset($_POST['submit'])){


	if(isset($_POST['srName']))
		$srName = $_POST['srName'];
	if(isset($_POST['srCategory']))
		$srCategory = $_POST['srCategory'];
	if(isset($_POST['price']))
		$price = $_POST['price'];
	if(isset($_POST['srLink']))
		$srLink = $_POST['srLink'];
	if(isset($_POST['srType']))
		$srType = $_POST['srType'];
	if(isset($_POST['srDesc']))
		$srDesc = $_POST['srDesc'];
	$unid = D_create_UserId();
	
	$image = $_FILES['image']['name'];
	$imgName = basename($image);

	$stmt = $link->prepare("INSERT INTO SERVICES (`UNI_ID`, `SR_NAME`, `CATEGORY`, `PRICE`, `LINK`, `DESCRIPTION`, `IMAGE`)VALUES(?, ?, ?, ?, ?, ?, ?)");

	$stmt->bind_param("sssssss", $unid, $srName, $srCategory, $price, $srLink, $srDesc, $imgName);

	$result = $stmt->execute();

	if ($result) {
		mkdir("CONTENT/UPLOADS/SERVICES/".$unid, 0755, true);


		$target = "CONTENT/UPLOADS/SERVICES/".$unid."/".basename($image);
		// echo "  ".$target;

		if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
	  		$msg = "File uploaded successfully";
	  		// echo $msg;
	  		echo '<div class="container"><div class="alert alert-success">Successfully Added the product </div></div>';
	  	}else{
	  		$msg = "Failed to upload File";
	  		// echo "not uploaded";
	  	}
	}

	// echo '<div class="alert alert-danger">'.$Id.'</div>';
	

  	if(!$result){
		echo '<div class="container"><div class="alert alert-danger">There was a database error </div></div>';
		echo '<div class="alert alert-danger">' . mysqli_error($link) . '</div>';
		exit;
	}
}

if ($GLOBALS['alert_info']!="") {
  echo $GLOBALS['alert_info'];
}

?>


<?php if($_SESSION['LoggedIn'] && $_SESSION['userAdmin']): ?>

<div class="container">
	<div class="row">
          <!-- left column -->
      <div class="col-md-9 ml-auto mr-auto">
        <!-- general form elements -->
        <div class="card card-success">
          <div class="card-header">
            <h2 class="card-title">Add a service</h2>
          </div>
          <!-- /.card-header -->
          <!-- form start -->
          <form role="form" method="POST" enctype="multipart/form-data">
          	<input type="hidden" name="size" value="1000000">
            <div class="card-body">
              <!-- <div class="form-group">
                <label for="exampleInputEmail1">Email address</label>
                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
              </div> -->
              <div class="row">
            	<div class="col-sm-6">
            		 <div class="form-group">
					    <label for="name">Service Name<span style="color: red;">*</span></label>
		    			<input type="text" class="form-control" name="srName" placeholder="Enter the name of service" required>
					  </div>
	      		</div>
	      		  <div class="col-sm-6">
	      		  	  <div class="form-group">
					   <label for="name">Service Category<span style="color: red;">*</span></label>
		    			<select name ="srCategory" class="form-control">
		    				<option>Select Category</option>
			                  	<option value="Education">Education/Course</option>
		                        <option value="OnlineCourses">Online Courses</option>
		                        <option value="Ecommerce">E-Commerce</option>
		                        <option value="Meditation">Spirituality/Meditation</option>
		                        <option value="SelfAwarness">Self-awareness</option>
		                        <option value="Jobs">Employment/Jobs</option>
		                        <option value="Movies">Movies/Music</option>
		                        <option value="Business">Business/ Entrepreneurship</option>
		                        <option value="PublicSpeaking">Public speaking</option>
		                        <option value="Coach">Coach/Mentor</option>
		                        <option value="Leadership">Leadership</option>
		                        <option value="Opportunity">Best opportunity</option>
		                        <option value="OtherServices">Other Services</option>
		    			</select>
					  </div>
      		  		</div>
	            </div>
              <div class="row">
            	<div class="col-sm-6">
            		 <div class="form-group">
					    <label for="name">Price<span style="color: red;">*</span></label>
						<input type="number" class="form-control" id="nameofchild"  placeholder="Enter the price" name="price" required>
					  </div>
	      		</div>
	      		  <div class="col-sm-6">
	      		  	  <div class="form-group">
					    <label for="name">Service Link<span style="color: red;">*</span></label>
					    <input type="text" class="form-control" id="region"  placeholder="https://xyz.com/xyzproduct" name="srLink" required>
					  </div>
      		  		</div>
	            </div>
	            <div class="row">
	            	<div class="col-sm-6">
	            		 <label for="validform">Upload Service Image<span style="color: red;">*</span></label>
					  	 <br>
						  <div class="input-group">
							  <div class="input-group-prepend">
							    <span class="input-group-text" id="inputGroupFileAddon01">Upload</span>
							  </div>
							  <div class="custom-file">
							    <input type="file" class="custom-file-input" id="inputGroupFile01"
							      aria-describedby="inputGroupFileAddon01" name="image" required>
							    <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
							  </div>
						</div>
		      		</div>
	      		    <div class="col-sm-6">
	      		  	  <div class="form-group">
					    <label for="name">Service Type<span style="color: red;">*</span></label>
					    <input type="text" class="form-control" id="nameofchild"  placeholder="Service Type" name="srType" required>
					  </div>
      		  		</div>
	            </div>
	             <div class="form-group">
				    <label for="exampleFormControlTextarea1">Service Description</label>
				    <textarea class="form-control" name="srDesc" id="exampleFormControlTextarea1" rows="3" placeholder="Description"></textarea>
				  </div>

	            <div class="row justify-content-center">
				  	<button type="submit" name="submit" class="btn btn-lg btn-block btn-success" style="margin-right: 20px; margin-left: 20px;">Submit Service</button>
				</div>

          	</div>
          </form>
      	</div>
      </div>
  	</div>
	
</div>






<?php endif ?>


<script type="text/javascript">
// Add the following code if you want the name of the file appear on select
	$(document).ready(function(){
		$(".custom-file-input").on("change", function() {
		  var fileName = $(this).val().split("\\").pop();
		  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
		});
	});
      
</script>
