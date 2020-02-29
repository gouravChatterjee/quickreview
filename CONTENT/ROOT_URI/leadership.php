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
                       <a href="allServices">All Services</a>
                       <a href="education" >Education/Course</a>
                        <a href="onlineCourses" >Online Courses</a>
                        <a href="eCommerce" >E-Commerce</a>
                        <a href="meditation">Spirituality/Meditation</a>
                        <a href="selfAwarness">Self-awareness</a>
                        <a href="jobs">Employment/Jobs</a>
                        <a href="movies" >Movies/Music</a>
                        <a href="business">Business/ Entrepreneurship</a>
                        <a href="publicSpeaking">Public speaking</a>
                        <a href="coach" >Coach/Mentor</a>
                        <a href="leadership" class="active">Leadership</a>
                        <a href="opportunity">Best opportunity</a>
                        <a href="otherServices">Other Services</a>
                    </div>
                  </div>
                  <div class="col-lg-9 col-sm-12">
                   <h4>Latest Services</h4>
                   <div class="row">
                   <?php 
                      $sql = "SELECT * FROM SERVICES WHERE CATEGORY='Leadership' ORDER BY ID DESC";
                      $result = mysqli_query($link,$sql);
                      if(mysqli_num_rows($result)>0){
                        while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){ 
                          $id = $row['UNI_ID'];
                          $name = $row['PR_NAME'];
                          $category = $row['CATEGORY'];
                          $price = $row['PRICE'];
                          $imgName = $row['IMAGE'];
                          echo '<div class="col-sm-4 col-md-6 col-lg-3"><div class="card" style="width:100%; "><a href="singleService?id='.$id.'">
                          <img src="/CONTENT/UPLOADS/SERVICES/'.$id.'/'.$imgName.'" class="card-img-top" alt="...">
                          <div class="card-body">
                            <h5 class="card-title" style="text-decoration:none;">'.$name.'</h5>
                          </div></a>
                        </div></div>';
                            // echo '<div class="col-sm-4 col-md-6 col-lg-2">
                            // <a href="singleProduct?id='.$id.'"><img style="margin-bottom:5px; border: 2px solid;" src="/CONTENT/UPLOADS/PRODUCT/'.$id.'/'.$imgName.'"  width="90px" height="90px"></a>
                            // </div>';
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
