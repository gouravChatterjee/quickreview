<script>
      if ( window.history.replaceState ) {
          window.history.replaceState( null, null, window.location.href );
      }
</script>
<style type="text/css">
	.con{
		padding: 20px;
	}
</style>
<style type="text/css">
.vertical-menu {
  width: 230px;
  background: #67E6DC;
  color: #67E6DC;
}

.vertical-menu a {
  background-color: #eee;
  color: black;
  display: block;
  padding: 12px;
  text-decoration: none;
}

.vertical-menu a:hover {
  background-color: #ccc;
}

.vertical-menu a.active {
  background-color: #192A56;
  color: white;
}
.card-img-top {
    width: 100%;
    height: 8vw;
    object-fit: cover;
}

</style>
<link rel="stylesheet" type="text/css" href="/CSS/5star.css">

<?php 
$link = new mysqli(MYSQL_HOST,MYSQL_USER,MYSQL_PASS,MYSQL_DB);
$link->set_charset("utf8");

if(mysqli_connect_error()){
	die("ERROR: UNABLE TO CONNECT: ".mysqli_connect_error());
}
if (isset($_GET['id'])) {
	$id = $_GET['id'];
}
if ($_SESSION['LoggedIn']) {
	$userId = $_SESSION['userId'];
	$userName = $_SESSION["userName"];
}

if (isset($_POST['submit'])) {
	$review = $_POST['rvw'];
  $rating = $_POST['rating'];
  $image = $_FILES['image']['name'];
  $imgName = basename($image);
  $unid = D_create_UserId();
  echo $imgName;
  echo $image;
	// $stmt = $link->prepare("INSERT INTO REVIEWS (`UNI_ID`, `PRODUCT_ID`, `USER_ID`, `USER_NAME`, `REVIEW_DETAILS`, `RATING`, `IMAGE`) VALUES (?, ?, ?, ?, ?, ?, ?)");

 //  $stmt->bind_param("sssssss", $unid, $id, $userId, $userName, $review, $rating, $imgName);

 //  $result = $stmt->execute();
	// if ($result) {
 //    mkdir("CONTENT/UPLOADS/REVIEWS/".$id."/".$unid, 0755, true);
 //    $target = "CONTENT/UPLOADS/REVIEWS/".$id."/".$unid."/".basename($image);
 //    if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
 //        $msg = "File uploaded successfully";
 //        // echo $msg;
 //    }else{
 //      $msg = "Failed to upload File";
 //      // echo "not uploaded";
 //    }
	// 	echo '<div class="container"><div class="alert alert-success">Successfully submitted review</div></div>';
	// }else{
	// 	echo mysqli_error($link);
	// }

}
$sql = "SELECT * FROM SERVICES WHERE UNI_ID = '$id'";

$result = mysqli_query($link,$sql);
$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
$name = $row['SR_NAME'];
$price = $row['PRICE'];
$description = $row['DESCRIPTION'];
$category = $row['CATEGORY'];
$linkDe = $row['LINK'];
$review = $row['REVIEW'];
$imgName = $row['IMAGE'];
?>


<div class="container">
	<div class="row">
    
          <!-- left column -->
      <div class="col-md-9 col-sm-12">
        <!-- general form elements -->
        <div class="card con">
        	<h1 class="text-center"><?php echo $name ?></h1><hr>
          <div class="row">
          	<div class="col-lg-6 col-sm-12">
          	 	<?php echo '<img src="/CONTENT/UPLOADS/SERVICES/'.$id.'/'.$imgName.'" height="300" width="100%" alt="">'; ?>
          	</div>
          	<div class="col-lg-6 col-sm-12">
          		<h3 style="color: green"><?php echo "Rs:- ".$price ?></h3>
          		<h3><a href="<?php echo $linkDe; ?>" class="btn btn-success" title="Click to buy the product"> <i class="fa fa-shopping-cart" aria-hidden="true"></i>
	Buy</a></h3>
          		<h3>Category:- <?php echo $category; ?></h3>
          		<h4>Product Description:- <?php echo $description; ?></h4>
          	</div>
          </div>
      	</div>
      	<?php if($_SESSION['LoggedIn'] ): ?>
      	<div class="card">
        	<div class="card-header"><h4>Share a review</h4></div>
        	<div class="card-body">
        		<form method="POST">
              <div class="rate-area">
                <h4 style="font-weight: bold;">Give Rating:- </h4>
                <input type="radio" id="5-star" name="rating" value="5" /><label for="5-star" title="Amazing">5 stars</label>
                <input type="radio" id="4-star" name="rating" value="4" /><label for="4-star" title="Good">4 stars</label>
                <input type="radio" id="3-star" name="rating" value="3" /><label for="3-star" title="Average">3 stars</label>
                <input type="radio" id="2-star" name="rating" value="2" /><label for="2-star" title="Not Good">2 stars</label>
                <input type="radio" id="1-star" name="rating" value="1" /><label for="1-star" title="Bad">1 star</label>
                
            </div>
              <textarea name="rvw" class="form-control" placeholder="Enter your review" rows="3"></textarea><br>
              <div class="col-sm-12">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="inputGroupFileAddon01"><i class="fa fa-upload" aria-hidden="true"></i></span>
                    </div>
                    <div class="custom-file">
                      <input type="file" class="custom-file-input" id="inputGroupFile01"
                        aria-describedby="inputGroupFileAddon01" name="image">
                      <label class="custom-file-label" for="inputGroupFile01">Upload an image</label>
                    </div>
                  </div>
              </div><br>
              <input type="submit" name="submit" class="btn btn-success" value="Submit Review">
        		</form>
        	</div>
      	</div>
        <?php else: ?>
          <div class="alert alert-warning"><a href="signIn" style=" color: black;">Sign In</a> to give a review!</div>
		<?php endif; ?>
      	<div class="card">
        	<div class="card-header"><h4>Reviews</h4></div>
        	<div class="card-body">
        		 <?php 
        		 $id = $_GET['id']; 
                      $sql = "SELECT * FROM REVIEWS WHERE PRODUCT_ID = '$id' ORDER BY ID DESC";
                      $result = mysqli_query($link,$sql);
                      if ($result) {
                      	 if(mysqli_num_rows($result)>0){
	                        while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){ 
	                          $uId = $row['USER_ID'];
	                          $uName = $row['USER_NAME'];
	                          $review = $row['REVIEW_DETAILS'];
                            $reviewUser = $row['USER_TYPE'];
                            if ($reviewUser == 'ADMIN') {
                              echo '<h4 style="color:#192A56"><b>'.$review.'</b></h4>';
                              echo '<h5 style="color:#192A56">By:- '.$uName.'</h6>';
                            }else{
                              echo '<h4><b>'.$review.'</b></h4>';
                              echo '<h5>By:- '.$uName.'</h6>';
                            }
	                          echo '<hr>';
	                         }
	                      }else{
	                        echo '<div class="container"><div class="alert alert-warning">No review</div></div>';
	                      }
                      }else{
                      	echo mysqli_error($link);
                      }
                     

                ?>
        	</div>
      	</div>
      </div>
      <div class="col-md-3 col-sm-12">
      <h3>Categories</h3>
        <div class="vertical-menu">
          <a href="allProducts">All Products</a>
          <a href="technology">Technology</a>
          <a href="food">Food</a>
          <a href="fashion">Fashion</a>
          <a href="skincare">Skincare & beauty</a>
          <a href="accessories">Accessories</a>
          <a href="art">Art</a>
          <a href="games">Games</a>
          <a href="books">Books/e-books/audio-books</a>
          <a href="homeDecor">Home Decor</a>
          <a href="software">Software</a>
          <a href="sports">Sports</a>
          <a href="travel">Travel</a>
          <a href="greenProducts">Green Products</a>
          <a href="computer">Computer/Internet</a>
          <a href="health">Health & Fitness</a>
          <a href="bestProducts">Best Products</a>
          <a href="others">Others</a>
        </div>
      </div>
  	</div>
	
</div>

<script type="text/javascript">
// Add the following code if you want the name of the file appear on select
  $(document).ready(function(){
    $(".custom-file-input").on("change", function() {
      var fileName = $(this).val().split("\\").pop();
      $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
    });
  });
      
</script>


