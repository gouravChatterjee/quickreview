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
    height: 8vw;
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
  if (!empty($_FILES['image']['name'])) {
     $image = $_FILES['image']['name'];
     // $imgName = basename($image);
  }else{
    $image = null;
    // $imgName = null;
  }
  $unid = D_create_UserId();       
  $stmt = $link->prepare("INSERT INTO REVIEWS (`UNI_ID`, `PRODUCT_ID`, `PRODUCT_TYPE`, `USER_ID`, `USER_NAME`, `REVIEW_DETAILS`, `RATING`, `IMAGE`) VALUES (?, ?, 'PRODUCT', ?, ?, ?, ?, ?)");

  $stmt->bind_param("sssssss", $unid, $id, $userId, $userName, $review, $rating, $image);

  $result = $stmt->execute();
  if ($result) {
    if ($image != null) {
      mkdir("CONTENT/UPLOADS/REVIEWS/".$id."/".$unid, 0755, true);
     foreach($_FILES['image']['name'] as $key=>$val){
          $target = "CONTENT/UPLOADS/REVIEWS/".$id."/".$unid."/".basename($_FILES['image']['name'][$key]);
           if (move_uploaded_file($_FILES['image']['tmp_name'][$key], $target)) {
                  $msg = "Image uploaded successfully";
                  // echo $msg;
              }else{
                  $msg = "Failed to upload image";
                  // echo "not uploaded";
                  // echo $msg;
              }
      }
    }
    echo '<div class="container"><div class="alert alert-success">Successfully submitted review</div></div>';
  }else{
    echo mysqli_error($link);
  }

}
$sql = "SELECT * FROM PRODUCT WHERE UNI_ID = '$id'";

$result = mysqli_query($link,$sql);
$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
$name = $row['PR_NAME'];
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
               <?php 
                if ($imgName == '' || $imgName == null) {
                  echo '<img src="https://www.movehostel.com/storage/app/Hostels/fab30d10-bb5b-11e9-b24b-a9b5c37d172c/20190810104533no%20image.jpg" height="300" width="100%" alt="">';
                }else{
                  echo '<img src="/CONTENT/UPLOADS/PRODUCT/'.$id.'/'.$imgName.'" height="300" width="100%" alt="">';
                }

               ?>
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
           <!-- SHARE TO SOCIAL MEDIA -->
        <div class="card">
          <div class="card-body">
            <div class="card-text">Share this page</div>
          <!-- AddToAny BEGIN -->
            <div class="a2a_kit a2a_kit_size_32 a2a_default_style">
              <a class="a2a_button_facebook"></a>
              <a class="a2a_button_twitter"></a>
              <a class="a2a_button_email"></a>
              <a class="a2a_button_linkedin"></a>
              <a class="a2a_button_pinterest"></a>
            </div>
            <script async src="https://static.addtoany.com/menu/page.js"></script>
        <!-- AddToAny END -->
          </div>
        </div>
         <!-- SHARE TO SOCIAL MEDIA -->
        <div class="card">
          <div class="card-header"><h4>Share a review</h4></div>
          <div class="card-body">
            <form method="POST" enctype="multipart/form-data">
              <input type="hidden" name="size" value="1000000">
              <div class="rate-area">
                <h4 style="font-weight: bold;">Give Rating:- </h4>
                <input type="radio" id="5-star" name="rating" value="5"/><label for="5-star" title="Amazing">5 stars</label>
                <input type="radio" id="4-star" name="rating" value="4"/><label for="4-star" title="Good">4 stars</label>
                <input type="radio" id="3-star" name="rating" value="3"/><label for="3-star" title="Average">3 stars</label>
                <input type="radio" id="2-star" name="rating" value="2"/><label for="2-star" title="Not Good">2 stars</label>
                <input type="radio" id="1-star" name="rating" value="1"/><label for="1-star" title="Bad">1 star</label>
              </div>
              <textarea name="rvw" class="form-control" placeholder="Enter your review" rows="3" required></textarea><br>
              <div class="col-sm-12">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="inputGroupFileAddon01"><i class="fa fa-upload" aria-hidden="true"></i></span>
                    </div>
                    <div class="custom-file">
                      <input type="file" class="custom-file-input" id="inputGroupFile01"
                        aria-describedby="inputGroupFileAddon01" name="image[]" multiple>
                      <label class="custom-file-label" for="inputGroupFile01">Upload Images</label>
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
                            $rId = $row['UNI_ID'];
                            $pId = $row['PRODUCT_ID'];
                            $uName = $row['USER_NAME'];
                            $review = $row['REVIEW_DETAILS'];
                            $reviewUser = $row['USER_TYPE'];
                            $rating = $row['RATING'];
                            $image = $row['IMAGE'];
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
                                      <div class="col-sm-4 col-md-6 col-lg-3"><div class="card" style="width:100%; "><img class="card-img-top" src="' . $image . '" id="'.$image.'" onclick="showBig(`'.$image.'`);" alt="Service image" /></div></div>';
                                    // echo ' . "<br /><br />";

                                }
                                echo '</div>';
                              }
                              
                              echo '<p>By:- '.$uName.'</p>';
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
          <a href="shareReview?type=allProducts&product=true">All Products</a>
          <a href="shareReview?type=technology&product=true">Technology</a>
          <a href="shareReview?type=food&product=true">Food</a>
          <a href="shareReview?type=fashion&product=true">Fashion</a>
          <a href="shareReview?type=skincare&product=true">Skincare & beauty</a>
          <a href="shareReview?type=accessories&product=true">Accessories</a>
          <a href="shareReview?type=art&product=true">Art</a>
          <a href="shareReview?type=games&product=true">Games</a>
          <a href="shareReview?type=books&product=true">Books/e-books/audio-books</a>
          <a href="shareReview?type=homeDecor&product=true">Home Decor</a>
          <a href="shareReview?type=software&product=true">Software</a>
          <a href="shareReview?type=sports&product=true">Sports</a>
          <a href="shareReview?type=travel&product=true">Travel</a>
          <a href="shareReview?type=greenProducts&product=true">Green Products</a>
          <a href="shareReview?type=computer&product=true">Computer/Internet</a>
          <a href="shareReview?type=health&product=true">Health & Fitness</a>
          <a href="shareReview?type=bestProducts&product=true">Best Products</a>
          <a href="shareReview?type=others&product=true">Others</a>
        </div>
      </div>
    </div>
  
</div>
<div id="myModal" class="modal">

  <!-- The Close Button -->
  <button class="close" id="closeBtn" onclick="closeB()">&times;</button>

  <!-- Modal Content (The Image) -->
  <img class="modal-content" id="img01">

  <!-- Modal Caption (Image Text) -->
  <div id="caption"></div>
</div>

<script type="text/javascript">
// Add the following code if you want the name of the file appear on select
  $(document).ready(function(){
    $(".custom-file-input").on("change", function() {
      var fileName = $(this).val().split("\\").pop();
      $(this).siblings(".custom-file-label").addClass("selected").html("Image Selected");
    });
  });
  
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
    console.log("sdfb");
    document.getElementById("myModal").style.display = "none";
  }


    // When the user clicks on <span> (x), close the modal
    
      
</script>



