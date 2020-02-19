<style type="text/css">
  .vertical-menu {
  width: 230px;
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

<script>
    if ( window.history.replaceState ) {
        window.history.replaceState( null, null, window.location.href );
    }
</script>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v5.0"></script>
<?php 
	$link = mysqli_connect(MYSQL_HOST,MYSQL_USER,MYSQL_PASS,MYSQL_DB);
  $email = $_SESSION["user"];
  $userId = $_SESSION["userId"];
 //  $sql = "SELECT * FROM ATHENEUM_STUDENT WHERE UNI_ID = '$userId'";
 //  $result = mysqli_query($link,$sql);

 // if($result){
 //      if(mysqli_num_rows($result)>0){
 //        $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
 //        $userName = $row["NAME"];
 //        $email = $row["EMAIL"];
 //        $phone = $row["PHONE"];
 //        $programName = $row['PROGRAM_NAME'];
 //        $programType = $row['PROGRAM_TYPE'];
 //      }
 //  }
 //  if (isset($_POST['flag'])) {
 //    $image = $_FILES['propic']['name'];
 //    $imgName = "propic.webp";
 //    mkdir("CONTENT/UPLOADS/USERS/".$userId."/",  0755, true);
 //    $target = "CONTENT/UPLOADS/USERS/".$userId."/".$imgName;
 //    if (move_uploaded_file($_FILES['propic']['tmp_name'], $target)) {
 //      // $msg = "Image uploaded successfully";
 //      echo '<div class=container><div class="alert alert-success">Successfully updated profile picture</div></div>';
 //    }else{
 //      echo '<div class=container><div class="alert alert-danger">Error occured! Please try again!</div></div>';
      
 //    }
 //  }
 ?>


<div class="container">
  <div id="fb-root"></div>
	
	 <div class="row">
        <div class="col-md-12">

          <div class="row">
          <div class="col-12 ml-auto mr-auto">
            <div class="card">
              <!-- /.card-header -->
              <div class="card-body">
                <div class="row">
                  <div class="col-lg-3 col-sm-12">
                    <h4>Categories</h4>
                    <div class="vertical-menu">
                      <a href="allProducts" class="active">All Products</a>
                      <a class="dropdown-item" href="technology">Technology</a>
                      <a class="dropdown-item" href="food">Food</a>
                      <a class="dropdown-item" href="fashion">Fashion</a>
                      <a class="dropdown-item" href="skincare">Skincare & beauty</a>
                      <a class="dropdown-item" href="accessories">Accessories</a>
                      <a class="dropdown-item" href="art">Art</a>
                      <a class="dropdown-item" href="games">Games</a>
                      <a class="dropdown-item" href="books">Books/e-books/audio-books</a>
                      <a class="dropdown-item" href="homeDecor">Home Decor</a>
                      <a class="dropdown-item" href="software">Software</a>
                      <a class="dropdown-item" href="sports">Sports</a>
                      <a class="dropdown-item" href="travel">Travel</a>
                      <a class="dropdown-item" href="greenProducts">Green Products</a>
                      <a class="dropdown-item" href="computer">Computer/Internet</a>
                      <a class="dropdown-item" href="health">Health & Fitness</a>
                      <a class="dropdown-item" href="bestProducts">Best Products</a>
                      <a class="dropdown-item" href="bestProducts">Others</a>
                    </div>
                  </div>
                  <div class="col-lg-9 col-sm-12">
                   <h4>Latest Products</h4>
                   <div class="row">
                   <?php 
                      $sql = "SELECT * FROM PRODUCT ORDER BY ID DESC";
                      $result = mysqli_query($link,$sql);
                      if(mysqli_num_rows($result)>0){
                        while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){ 
                          $id = $row['UNI_ID'];
                          $name = $row['PR_NAME'];
                          $category = $row['CATEGORY'];
                          $price = $row['PRICE'];
                          $imgName = $row['IMAGE'];
                          echo '<div class="col-sm-4 col-md-6 col-lg-3"><div class="card" style="width:100%; "><a href="singleProduct?id='.$id.'">
                          <img src="/CONTENT/UPLOADS/PRODUCT/'.$id.'/'.$imgName.'" class="card-img-top" alt="...">
                          <div class="card-body">
                            <h5 class="card-title" style="text-decoration:none;">'.$name.'</h5>
                          </div></a>
                        </div></div>';
                            // echo '<div class="col-sm-4 col-md-6 col-lg-2">
                            // <a href="singleProduct?id='.$id.'"><img style="margin-bottom:5px; border: 2px solid;" src="/CONTENT/UPLOADS/PRODUCT/'.$id.'/'.$imgName.'"  width="90px" height="90px"></a>
                            // </div>';
                         }
                      }else{
                        echo "Error";
                      }

                    ?>
                  </div>
                  </div>
                </div>
              </div> 
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

        </div>
      </div>
</div>
