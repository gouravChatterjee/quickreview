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
                      <a href="allProducts">All Products</a>
                      <a href="technology">Technology</a>
                      <a href="food">Food</a>
                      <a href="fashion" >Fashion</a>
                      <a href="skincare" >Skincare & beauty</a>
                      <a href="accessories">Accessories</a>
                      <a href="art">Art</a>
                      <a href="games">Games</a>
                      <a href="books">Books/e-books/audio-books</a>
                      <a href="homeDecor">Home Decor</a>
                      <a href="software" >Software</a>
                      <a href="sports" class="active">Sports</a>
                      <a href="travel">Travel</a>
                      <a href="greenProducts">Green Products</a>
                      <a href="computer">Computer/Internet</a>
                      <a href="health">Health & Fitness</a>
                      <a href="bestProducts">Best Products</a>
                      <a href="bestProducts">Others</a>
                    </div>
                  </div>
                  <div class="col-lg-9 col-sm-12">
                   <h4>Latest Products</h4>
                   <div class="row">
                   <?php 
                      $sql = "SELECT * FROM PRODUCT WHERE CATEGORY = 'Sports' ORDER BY ID DESC";
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
                         }
                      }else{
                        echo "<div class='alert alert-warning'>No Data</div>";
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
