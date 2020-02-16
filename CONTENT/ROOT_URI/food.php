<style type="text/css">
  .vertical-menu {
  width: 200px;
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
                      <a href="/">All Products</a>
                      <a href="technology">Technology</a>
                      <a href="food" class="active">Food</a>
                      <a href="medicine">Medicine</a>
                      <a href="clothes">Clothes</a>
                      <a href="accessories">Accessories</a>
                      <a href="art">Art</a>
                      <a href="entertainment">Entertainment</a>
                      <a href="games">Games</a>
                    </div>
                  </div>
                  <div class="col-lg-9 col-sm-12">
                   <h4>Featured Product</h4>
                   <div class="row">
                   <?php 
                      $sql = "SELECT * FROM PRODUCT WHERE CATEGORY= 'Food' ORDER BY ID DESC";
                      $result = mysqli_query($link,$sql);
                      if(mysqli_num_rows($result)>0){
                        while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){ 
                          $id = $row['UNI_ID'];
                          $name = $row['PR_NAME'];
                          $category = $row['CATEGORY'];
                          $price = $row['PRICE'];
                          $imgName = $row['IMAGE'];
                            echo '<div class="col-xs-6 col-sm-4 col-md-6 col-lg-2">
                            <a href="singleProduct?id='.$id.'"><img style="margin-bottom:5px" src="/CONTENT/UPLOADS/PRODUCT/'.$id.'/'.$imgName.'"  width="100%" height="80px"></a>
                            </div>';
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
