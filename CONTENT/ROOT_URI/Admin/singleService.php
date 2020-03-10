<script>
      if ( window.history.replaceState ) {
          window.history.replaceState( null, null, window.location.href );
      }
</script>
<style type="text/css">
	.con{
		padding: 20px;
  	}
    .checked {
    color: orange;
  }

  @media only screen and (max-width: 600px) {
    .card-img-top {
      width: 100%;
      height: 40vw;
      object-fit: cover;
  }
  }
  @media only screen and (min-width: 605px) {
    .card-img-top {
      width: 100%;
      height: 10vw;
      object-fit: cover;
  }
  }
  .modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
  }

  /* Modal Content (image) */
  .modal-content {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
  }

  /* Caption of Modal Image */
  #caption {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
    text-align: center;
    color: #ccc;
    padding: 10px 0;
    height: 150px;
  }

  /* Add Animation */
  .modal-content, #caption {  
    -webkit-animation-name: zoom;
    -webkit-animation-duration: 0.6s;
    animation-name: zoom;
    animation-duration: 0.6s;
  }

  @-webkit-keyframes zoom {
    from {-webkit-transform:scale(0)} 
    to {-webkit-transform:scale(1)}
  }

  @keyframes zoom {
    from {transform:scale(0)} 
    to {transform:scale(1)}
  }

  /* The Close Button */
  .close {
    position: absolute;
    top: 15px;
    right: 35px;
    color: #f1f1f1;
    font-size: 40px;
    font-weight: bold;
    transition: 0.3s;
  }

  .close:hover,
  .close:focus {
    color: #bbb;
    text-decoration: none;
    cursor: pointer;
  }

  /* 100% Image Width on Smaller Screens */
  @media only screen and (max-width: 700px){
    .modal-content {
      width: 100%;
    }
  }
</style>

<?php 
$link = new mysqli(MYSQL_HOST,MYSQL_USER,MYSQL_PASS,MYSQL_DB);
$link->set_charset("utf8");
$userId = $_SESSION['userId'];
$userName = $_SESSION["userName"];

if(mysqli_connect_error()){
	die("ERROR: UNABLE TO CONNECT: ".mysqli_connect_error());
}
if (isset($_GET['id'])) {
	$id = $_GET['id'];
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

if (isset($_POST['submit'])) {
	$review = $_POST['rvw'];
	$stmt = $link->prepare("INSERT INTO REVIEWS (`PRODUCT_ID`, `USER_ID`, `USER_TYPE`, `USER_NAME`, `REVIEW_DETAILS`) VALUES (?, ?, 'ADMIN', ?, ?)");

  	$stmt->bind_param("ssss", $id, $userId, $userName, $review);

  	$resultRvw = $stmt->execute();
	if ($resultRvw) {
		echo '<div class="container"><div class="alert alert-success">Successfully submitted review</div></div>';
	}else{
		echo mysqli_error($link);
	}

}

?>

<?php if($_SESSION['LoggedIn'] && $_SESSION['userAdmin']): ?>
<div class="container">
	<div class="row">
          <!-- left column -->
      <div class="col-md-12 ml-auto mr-auto">
        <!-- general form elements -->
        <div class="card con">
        	<h1 class="text-center"><?php echo $name ?></h1><hr>
          <div class="row">
          	<div class="col-lg-6 col-sm-12">
          	 	<?php echo '<img src="/CONTENT/UPLOADS/SERVICES/'.$id.'/'.$imgName.'" height="100%" width="100%" alt="">'; ?>
          	</div>
          	<div class="col-lg-6 col-sm-12">
          		<h3 style="color: green"><?php echo "Rs:- ".$price ?></h3>
          		<h3>Link:-<a href="<?php echo $linkDe; ?>" class="btn btn-success"> <i class="fa fa-shopping-cart" aria-hidden="true"></i>
	Go</a></h3>
          		<h3>Category:- <?php echo $category; ?></h3>
          		<h4>Product Description:- <?php echo $description; ?></h4>
          	</div>
          </div>
      	</div>
      	<div class="card">
        	<div class="card-header"><h4>Share a review as Admin</h4></div>
        	<div class="card-body">
        		<form method="POST">
        			<input type="text" name="rvw" placeholder="Enter your review" class="form-control" required><br>
        			<input type="submit" name="submit" class="btn btn-success" value="Submit Review">
        		</form>
        	</div>
      	</div>
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
                            $rId = $row['UNI_ID'];
                            $pId = $row['PRODUCT_ID'];
                            $uName = $row['USER_NAME'];
                            $review = $row['REVIEW_DETAILS'];
                            $reviewUser = $row['USER_TYPE'];
                            $rating = $row['RATING'];
                            $image = $row['IMAGE'];
                            $bestReview = $row['BEST_REVIEW'];
                            if ($reviewUser == 'ADMIN') {
                              echo '<h4 style="color:#192A56"><b>'.$review.'</b></h4>';
                              echo '<h5 style="color:#192A56">By:- '.$uName.'</h6>';
                            }else{
                              for ($i=0; $i < $rating; $i++) { 
                                echo '<span class="fa fa-star checked"></span>';
                              }
                              echo '<h4><b>Review:-</b> '.$review.'</h4>';

                              if ($image != null) {
                                echo '<h5 style="font-weight:bold;">Images:- </h5>';
                                $files = glob("CONTENT/UPLOADS/REVIEWS/".$pId."/".$rId."/*.*");
                                echo '<div class="row">';
                                for ($i = 0; $i < count($files); $i++) {
                                    $image = $files[$i];
                                    echo '
                                      <div class="col-sm-4 col-md-6 col-lg-3"><div class="card" style="width:100%; "><img class="card-img-top" src="/' . $image . '" id="'.$image.'" onclick="showBig(`'.$image.'`);" alt="Service image" /></div></div>';
                                    // echo ' . "<br /><br />";

                                }
                                echo '</div>';
                              }
                              
                              echo '<p>By:- '.$uName.'</p>';
                            }
                            if ($bestReview == null) {
                              echo '<button onclick="markBest(`'.$rId.'`)" class="btn btn-success">Mark as best review</button>';
                            }else{
                              echo '<button onclick="removeBest(`'.$rId.'`)" class="btn btn-danger">Remove from best reviews</button>';
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
  	</div>
	
</div>

<!-- -------MODAL TO SHOW IMAGE -->

<div id="myModal" class="modal">

  <!-- The Close Button -->
  <button class="close" id="closeBtn" onclick="closeB()">&times;</button>

  <!-- Modal Content (The Image) -->
  <img class="modal-content" id="img01">

  <!-- Modal Caption (Image Text) -->
  <div id="caption"></div>
</div>
<?php endif; ?>

<script type="text/javascript">
  function showBig(id) {
    var modal = document.getElementById("myModal");

  // Get the image and insert it inside the modal - use its "alt" text as a caption
    
    var modalImg = document.getElementById("img01");
    var img = document.getElementById(id);
    // var captionText = document.getElementById("caption");
      modal.style.display = "block";
      modalImg.src = img.src;
      

    // Get the <span> element that closes the modal
    
  }
  function closeB(){
    document.getElementById("myModal").style.display = "none";
  }
  function markBest(rId){
    // console.log("best");
    fetch('/API/V1/?markBest&reviewId='+rId)
      .then(
        function(response) {
          if (response.status !== 200) {
            console.log('Looks like there was a problem. Status Code: ' +
              response.status);
            return;
          }
            response.json().then(function(data) {
            document.location.reload();
          });
        }
      )
      .catch(function(err) {
        console.log('Fetch Error :-S', err);
      });
  }
  function removeBest(rId) {
    // console.log("not best");
    fetch('/API/V1/?removeBest&reviewId='+rId)
      .then(
        function(response) {
          if (response.status !== 200) {
            console.log('Looks like there was a problem. Status Code: ' +
              response.status);
            return;
          }
            response.json().then(function(data) {
            document.location.reload();
          });
        }
      )
      .catch(function(err) {
        console.log('Fetch Error :-S', err);
      });
  }

</script>