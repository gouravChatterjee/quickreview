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
	$userId = $_SESSION["userId"];
 	$userName = $_SESSION["userName"];
 	echo $userName;
 	echo $userId;
	
	$image = $_FILES['image']['name'];
	$imgName = basename($image);

	// $stmt = $link->prepare("INSERT INTO PRODUCT (`UNI_ID`, `PR_NAME`, `CATEGORY`, `PRICE`, `LINK`, `DESCRIPTION`, `IMAGE`, `USER_ID`, `USER_NAME`)VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)");

	// $stmt->bind_param("sssssssss", $unid, $prName, $prCategory, $price, $prLink, $prDesc, $imgName, $userId, $userName);

	// $result = $stmt->execute();

	// if ($result) {
	// 	mkdir("CONTENT/UPLOADS/PRODUCT/".$unid, 0755, true);


	// 	$target = "CONTENT/UPLOADS/PRODUCT/".$unid."/".basename($image);
	// 	// echo "  ".$target;

	// 	if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
	//   		$msg = "File uploaded successfully";
	//   		// echo $msg;
	//   		echo '<div class="container"><div class="alert alert-success">Successfully Added the product </div></div>';
	//   	}else{
	//   		$msg = "Failed to upload File";
	//   		// echo "not uploaded";
	//   	}
	// }

	// echo '<div class="alert alert-danger">'.$Id.'</div>';
	

 //  	if(!$result){
	// 	echo '<div class="container"><div class="alert alert-danger">There was a database error </div></div>';
	// 	echo '<div class="alert alert-danger">' . mysqli_error($link) . '</div>';
	// 	exit;
	// }
}

  ?>

 <?php 
 if(!$_SESSION['LoggedIn'] ){
 	include("signUp.php");
 }else{ ?>
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
				  	<button type="submit" name="submitProduct" class="btn btn-lg btn-block btn-success" style="margin-right: 20px; margin-left: 20px;">Submit product</button>
				</div>

          	</div>
          </form>
		<br>
	    </div>
	</div>




            <div class="tab-pane fade" id="pills-non" role="tabpanel" aria-labelledby="pills-non-tab">
                <div class="col-sm-12 border border-primary shadow rounded pt-2">
             <form action="register_non" method="post" id="singnupFrom">
             <div class="row">
	        	<div class="col-sm-6">
	        		 <div class="form-group">
					    <label for="name">Name of Candidate <span style="color: red;">*</span></label>
					    <input type="text" class="form-control" id="nameofchild"  placeholder="Enter the name of Candidate" name="sName" required>

					  </div>

	      		</div>

	      		  <div class="col-sm-6">
	      		  	   <div class="form-group">
					    <label for="dateofbirth">Date of Birth <span style="color: red;">*</span></label>
					    <input type="date" class="form-control" id="dob" name="dob" required>

					  </div>


	  		 	 </div>
        </div>

        <div class="row">
        	<div class="col">
        		<div class="form-group">
				    <label for="name">Name of Father <span style="color: red;">*</span></label>
				    <input type="text" class="form-control" id="nameoffather"  placeholder="Enter the name of father" name="fathername" required>

				 </div>
        	</div>
        	<div class="col">
        		<div class="form-group">
				    <label for="name">Name of Mother<span style="color: red;">*</span></label>
				    <input type="text" class="form-control" id="nameoffather"  placeholder="Enter the name of mother" name="mothername" required>

				  </div>
        	</div>
        </div>

        <div class="row">
        	<div class="col">
        		 <div class="form-group">
				    <label for="number">Phone no of Parent<span style="color: red;">*</span></label>
				    <input type="number" class="form-control" id="nameofchild"  placeholder="Enter the phn no. of parent" name="phn" required>

				  </div>
        	</div>
        	<div class="col">
        		<div class="form-group">
				    <label for="exampleInputEmail1">Email address<span style="color: red;">*</span></label>
				    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email of Parent" name="email" required>
				    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
				  </div>
        	</div>
        </div>

        	<div class="table-responsive " >
        	<label for="name">Select Program and sub Program <span style="color: red;">*</span></label>
        	<table class="table table-bordered table-hover">
        		<tr>
        			<div class="row">
        				<div class="col">
        					<td scope="col">
		        		   	  <div class="form-check">
							    <input type="checkbox" class="form-check-input"  name="program[]" value="YLE" id="yleCheck">
							    <label class="form-check-label" for="exampleCheck1">YLE</label>
							   </div>
		        		   </td>
        				</div>
        				<div class="col">
        					 <td scope="col">
        		   				<div class="form-check" id="yleRow">
                                    <select class="form-control" id="yleDrop" name="subProgram[]"></select>
        		   				</div>
        		   			</td>
        				</div>
        			</div>
        		</tr>
        		<tr>
        		  <div class="row">
        				<div class="col">
        					<td scope="col">
		        		   	   <div class="form-check">
							     <input type="checkbox" class="form-check-input" name="program[]" value="MAXBRAIN" id="maxCheck">
							     <label class="form-check-label" for="exampleCheck1">MAXBRAIN</label>
							  </div>
		        		   </td>
        				</div>
        				<div class="col">
        					 <td  scope="col">
        		   				<div class="form-check" id="maxRow">
                                    <select class="form-control" id="maxDrop" name="subProgram[]"></select>
        		   				</div>
        		   			</td>
        				</div>
        			</div>
        		</tr>
        		
        		<tr>
        		  <div class="row">
        				<div class="col">
        					<td scope="col">
		        		   	  <div class="form-check">
							    <input type="checkbox" class="form-check-input" name="program[]" value="WRITO" id="wrtCheck">
							    <label class="form-check-label" for="exampleCheck1">WRITO</label>
							  </div>
		        		   </td>
        				</div>
        				<div class="col">
        					 <td scope="col">
        		   				<div class="form-check" id="wrtRow">
                                    <select class="form-control" id="wrtDrop" name="subProgram[]"></select>
        		   				</div>
        		   			</td>
        				</div>
        			</div>
        		</tr>
        		<tr>
        		  <div class="row">
        				<div class="col">
        					<td scope="col">
		        		   	  <div class="form-check">
							    <input type="checkbox" class="form-check-input" name="program[]" value="3P" id="3pCheck">
							    <label class="form-check-label" for="exampleCheck1">3P</label>
							  </div>
		        		   </td>
        				</div>
        				<div class="col">
        					 <td scope="col">
        		   				<div class="form-check" id="3pRow">
                                    <select class="form-control" id="3pDrop" name="subProgram[]"></select>
        		   				</div>
        		   			</td>
        				</div>
        			</div>
        		</tr>
        	</table>
        </div>

		  <div class="row">
		  	
		  	<div class="col">
		  		<div class="form-group">
				    <label for="exampleInputEmail1">Date of Enrollment<span style="color: red;">*</span></label>
				    <input type="date" class="form-control" id="dateenroll"  name="dateEnroll" required>

				  </div>
		  	</div>
		  </div>







		  <button type="submit" class="btn btn-primary btn-block" style="background-color: darkgreen;" name="submit">Submit</button>
                    </form>
                    <br>
                </div>
            </div>
        </div>
    </div>
</div>

<?php } ?>
 	

