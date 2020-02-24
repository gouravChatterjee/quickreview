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

	$stmt = $link->prepare("INSERT INTO PRODUCT (`UNI_ID`, `PR_NAME`, `CATEGORY`, `PRICE`, `LINK`, `DESCRIPTION`, `IMAGE`)VALUES(?, ?, ?, ?, ?, ?, ?)");

	$stmt->bind_param("sssssss", $unid, $prName, $prCategory, $price, $prLink, $prDesc, $imgName);

	$result = $stmt->execute();

	if ($result) {
		mkdir("CONTENT/UPLOADS/PRODUCT/".$unid, 0755, true);


		$target = "CONTENT/UPLOADS/PRODUCT/".$unid."/".basename($image);
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
            <h2 class="card-title">Add a product</h2>
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
	            		 <label for="validform">Upload Product Image<span style="color: red;">*</span></label>
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
				  	<button type="submit" name="submit" class="btn btn-lg btn-block btn-success" style="margin-right: 20px; margin-left: 20px;">Submit product</button>
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
		$("#vfrom").datepicker({
	     	changeMonth: true,
	     	changeYear:true,
	     	yearRange: "-10:+10",
	        maxDate: "+10Y",
	     	showAnim:"drop",
	     	dateFormat:"yy-mm-dd"
	     });
		$("#vTo").datepicker({
	     	changeMonth: true,
	     	changeYear:true,
	     	yearRange: "-10:+10",
	        maxDate: "+10Y",
	     	showAnim:"drop",
	     	dateFormat:"yy-mm-dd"
	     });
	});
      
</script>
