<script>
	  if ( window.history.replaceState ) {
	      window.history.replaceState( null, null, window.location.href );
	  }
</script>

<?php 
$link = new mysqli(MYSQL_HOST,MYSQL_USER,MYSQL_PASS,MYSQL_DB);
$link->set_charset("utf8");

 ?>

 <?php 
 $userId = $_SESSION["userId"];
 $userName = $_SESSION["userName"];
 
if (isset($_POST['submitProduct'])){
	if(isset($_POST['prName']))
		$prName = $_POST['prName'];
	if(isset($_POST['prCategory']))
		$prCategory = $_POST['prCategory'];
	if(isset($_POST['price']))
		$price = $_POST['price'];
	if(isset($_POST['prLink']))
		$prLink = $_POST['prLink'];
	if(isset($_POST['prType']))
		$prType = $_POST['prType'];
	if(isset($_POST['prDesc']))
		$prDesc = $_POST['prDesc'];
	
	$unid = D_create_UserId();
	
	
	$image = $_FILES['image']['name'];
	$imgName = basename($image);

	$stmt = $link->prepare("INSERT INTO PRODUCT (`UNI_ID`, `PR_NAME`, `CATEGORY`, `PRICE`, `LINK`, `DESCRIPTION`, `IMAGE`, `USER_ID`, `USER_NAME`)VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)");

	$stmt->bind_param("sssssssss", $unid, $prName, $prCategory, $price, $prLink, $prDesc, $imgName, $userId, $userName);

	$result = $stmt->execute();

	if ($result) {
		mkdir("CONTENT/UPLOADS/PRODUCT/".$unid, 0755, true);


		$target = "CONTENT/UPLOADS/PRODUCT/".$unid."/".basename($image);
		// echo "  ".$target;

		if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
	  		$msg = "File uploaded successfully";
	  		// echo $msg;
	  		
	  	}else{
	  		$msg = "Failed to upload File";
	  		// echo "not uploaded";
	  		// echo '<div class="container"><div class="alert alert-danger">There was a error uploading the image! Please try again!</div></div>';
	  	}
	  	echo '<div class="container"><div class="alert alert-success">Successfully Added the product </div></div>';
	}

	// echo '<div class="alert alert-danger">'.$Id.'</div>';
	

  	if(!$result){
		echo '<div class="container"><div class="alert alert-danger">There was an error </div></div>';
		// echo '<div class="alert alert-danger">' . mysqli_error($link) . '</div>';
		exit;
	}
}

if (isset($_POST['submitService'])){
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

	$stmt = $link->prepare("INSERT INTO SERVICES (`UNI_ID`, `SR_NAME`, `CATEGORY`, `PRICE`, `LINK`, `DESCRIPTION`, `IMAGE`, `USER_ID`, `USER_NAME`)VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)");

	$stmt->bind_param("sssssssss", $unid, $srName, $srCategory, $price, $srLink, $srDesc, $imgName, $userId, $userName);

	$result = $stmt->execute();

	if ($result) {
		mkdir("CONTENT/UPLOADS/SERVICES/".$unid, 0755, true);


		$target = "CONTENT/UPLOADS/SERVICES/".$unid."/".basename($image);
		// echo "  ".$target;

		if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
	  		$msg = "File uploaded successfully";
	  		// echo $msg;
	  	}else{
	  		$msg = "Failed to upload File";
	  		// echo "not uploaded";
	  	}
	  	echo '<div class="container"><div class="alert alert-success">Successfully Added the Service </div></div>';
	}
	// echo '<div class="alert alert-danger">'.$Id.'</div>';
	

  	if(!$result){
		echo '<div class="container"><div class="alert alert-danger">There was an error! Try again!</div></div>';
		// echo '<div class="alert alert-danger">' . mysqli_error($link) . '</div>';
		exit;
	}
}

  ?>

 <?php 
 if(!$_SESSION['LoggedIn'] ){
 	include("signUp.php");
 }else{
  ?>

 	<div class="container">
    <div class="col-sm-9 ml-auto mr-auto">
        <ul class="nav nav-pills nav-fill mb-1" id="pills-tab" role="tablist">
        	<li class="nav-item"> <a class="nav-link active" id="pills-iimtt-tab" data-toggle="pill" href="#pills-iimtt" role="tab" aria-controls="pills-iimtt" aria-selected="true">Add Product</a> </li>
            <li class="nav-item"> <a class="nav-link" id="pills-non-tab" data-toggle="pill" href="#pills-non" role="tab" aria-controls="pills-non" aria-selected="false">Add Service</a>

        </ul>




 <div class="tab-content" id="pills-tabContent">

    <div class="tab-pane fade show active" id="pills-iimtt" role="tabpanel" aria-labelledby="pills-iimtt-tab">
        <div class="card col-sm-12 border border-primary shadow rounded pt-2">
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
					    <label for="name">Product Name<span style="color: red;">*</span></label>
		    			<input type="text" class="form-control" name="prName" placeholder="Enter the name of product" required>
					  </div>
	      		</div>
	      		  <div class="col-sm-6">
	      		  	  <div class="form-group">
					   <label for="name">Product Category<span style="color: red;">*</span></label>
		    			<select name ="prCategory" class="form-control">
		    				<option>Select Category</option>
			                  <option value="all">All Product</option>
			                  <option value="Technology">Technology</option>
			                  <option value="Food">Food</option>
			                  <option value="Fashion">Fashion</option>
			                  <option value="Skincare">Skincare</option>
			                  <option value="Accessories">Accessories</option>
			                  <option value="Art">Art</option>
			                  <option value="Games">Games</option>
			                  <option value="Books">Books</option>
			                  <option value="Home Decor">Home Decor</option>
			                  <option value="Software">Software</option>
			                  <option value="sports">sports</option>
			                  <option value="Travel">Travel</option>
			                  <option value="Green Products">Green Products</option>
			                  <option value="Health">Health</option>
			                  <option value="Others">Others</option>
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
					    <label for="name">Product Link<span style="color: red;">*</span></label>
					    <input type="text" class="form-control" id="region"  placeholder="https://xyz.com/xyzproduct" name="prLink" required>
					  </div>
      		  		</div>
	            </div>
	            <div class="row">
	            	<div class="col-sm-6">
	            		 <label for="validform">Upload Product Image</label>
					  	 <br>
						  <div class="input-group">
							  <div class="input-group-prepend">
							    <span class="input-group-text" id="inputGroupFileAddon01">Upload</span>
							  </div>
							  <div class="custom-file">
							    <input type="file" class="custom-file-input" id="inputGroupFile01"
							      aria-describedby="inputGroupFileAddon01" name="image">
							    <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
							  </div>
						</div>
		      		</div>
	      		    <div class="col-sm-6">
	      		  	  <div class="form-group">
					    <label for="name">Product Type<span style="color: red;">*</span></label>
					    <input type="text" class="form-control" id="nameofchild"  placeholder="Product Type" name="prType" required>
					  </div>
      		  		</div>
	            </div>
	             <div class="form-group">
				    <label for="exampleFormControlTextarea1">Product Description</label>
				    <textarea class="form-control" name="prDesc" id="exampleFormControlTextarea1" rows="3" placeholder="Description"></textarea>
				  </div>

	            <div class="row justify-content-center">
				  	<button type="submit" name="submitProduct" class="btn btn-lg btn-block btn-success" style="margin-right: 20px; margin-left: 20px;">Submit product</button>
				</div>

          	</div>
          </form>
		<br>
	    </div>
	</div>




            <div class="tab-pane fade" id="pills-non" role="tabpanel" aria-labelledby="pills-non-tab">
                <div class="card col-sm-12 border border-primary shadow rounded pt-2">
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
	            		 <label for="validform">Upload Service Image</label>
					  	 <br>
						  <div class="input-group">
							  <div class="input-group-prepend">
							    <span class="input-group-text" id="inputGroupFileAddon01">Upload</span>
							  </div>
							  <div class="custom-file">
							    <input type="file" class="custom-file-input" id="inputGroupFile01"
							      aria-describedby="inputGroupFileAddon01" name="image">
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
				  	<button type="submit" name="submitService" class="btn btn-lg btn-block btn-success" style="margin-right: 20px; margin-left: 20px;">Submit Service</button>
				</div>

          	</div>
          </form>
           
                    <br>
                </div>
            </div>
        </div>
    </div>
</div>

<?php } ?>
 	

<script type="text/javascript">
// Add the following code if you want the name of the file appear on select
	$(document).ready(function(){
		$(".custom-file-input").on("change", function() {
		  var fileName = $(this).val().split("\\").pop();
		  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
		});
	});
      
</script>
