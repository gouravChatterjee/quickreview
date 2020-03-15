<script>
	  if ( window.history.replaceState ) {
	      window.history.replaceState( null, null, window.location.href );
	  }
</script>
<script type="text/javascript">
  function fetchProducts(productCategory){
    fetch('/API/V1/?fetchProducts&category='+productCategory)
        .then(
          function(response) {
            if (response.status !== 200) {
              console.log('Looks like there was a problem. Status Code: ' +
                response.status);
              return;
            }
              response.json().then(function(data) {
              console.log(data.data);
              var dataToshow = document.getElementById('showProductsHere');
              dataToshow.innerHTML = '';
              dataToshow.innerHTML = data.data;
            });
          }
        )
        .catch(function(err) {
          console.log('Fetch Error :-S', err);
        });
  }
  function fetchServices(serviceCategory){
    fetch('/API/V1/?fetchServices&category='+serviceCategory)
        .then(
          function(response) {
            if (response.status !== 200) {
              console.log('Looks like there was a problem. Status Code: ' +
                response.status);
              return;
            }
              response.json().then(function(data) {
              console.log(data.data);
              var dataToshow = document.getElementById('showServicesHere');
              dataToshow.innerHTML = '';
              dataToshow.innerHTML = data.data;
            });
          }
        )
        .catch(function(err) {
          console.log('Fetch Error :-S', err);
        });
  }
</script>

<?php 

if (isset($_GET['type'])) {
  $type = $_GET['type'];
  if($_GET['product'] == 'true')
    echo '<script>fetchProducts(`'.$type.'`); fetchServices("allServices");</script>';
  else
    echo '<script>fetchServices(`'.$type.'`); fetchProducts("allProducts");</script>';
}else{
  echo '<script type="text/javascript">
  window.onload = function() {
    fetchProducts("allProducts");
    fetchServices("allServices");
  };
</script>';
}


 ?>
<!-- <script type="text/javascript">
	window.onload = function() {
	  fetchProducts('allProducts');
	  fetchServices('allServices');
	};
</script> -->
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

</style>

<?php 
$link = new mysqli(MYSQL_HOST,MYSQL_USER,MYSQL_PASS,MYSQL_DB);
$link->set_charset("utf8");
$userId = $_SESSION["userId"];
$userName = $_SESSION["userName"];

 ?>
 <?php 
 if(!$_SESSION['LoggedIn'] ){
 	include("signUp.php");
 }else{
  ?>
<br>
 	<div class="container">
    <div class="col-sm-12 ml-auto mr-auto">
        <ul class="nav nav-pills nav-fill mb-1" id="pills-tab" role="tablist">
        	<li class="nav-item"> <a class="nav-link active" id="pills-iimtt-tab" data-toggle="pill" href="#pills-iimtt" role="tab" aria-controls="pills-iimtt" aria-selected="true" style="font-size: 20px;">Products</a> </li>
            <li class="nav-item"> <a class="nav-link" id="pills-non-tab" data-toggle="pill" href="#pills-non" role="tab" aria-controls="pills-non" style="font-size: 20px;" aria-selected="false">Services</a>

        </ul>

 <div class="tab-content" id="pills-tabContent">

    <div class="tab-pane fade show active" id="pills-iimtt" role="tabpanel" aria-labelledby="pills-iimtt-tab">
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
                      <a href="#" onclick="fetchProducts('allProducts')">All Products</a>
                      <a href="#" onclick="fetchProducts('technology')">Technology</a>
                      <a href="#" onclick="fetchProducts('food')">Food</a>
                      <a href="#" onclick="fetchProducts('fashion')">Fashion</a>
                      <a href="#" onclick="fetchProducts('skincare')">Skincare & beauty</a>
                      <a href="#" onclick="fetchProducts('accessories')">Accessories</a>
                      <a href="#" onclick="fetchProducts('art')">Art</a>
                      <a href="#" onclick="fetchProducts('games')">Games</a>
                      <a href="#" onclick="fetchProducts('books')">Books/e-books/audio-books</a>
                      <a href="#" onclick="fetchProducts('homeDecor')">Home Decor</a>
                      <a href="#" onclick="fetchProducts('software')">Software</a>
                      <a href="#" onclick="fetchProducts('sports')">Sports</a>
                      <a href="#" onclick="fetchProducts('travel')">Travel</a>
                      <a href="#" onclick="fetchProducts('greenProducts')">Green Products</a>
                      <a href="#" onclick="fetchProducts('computer')">Computer/Internet</a>
                      <a href="#" onclick="fetchProducts('health')">Health & Fitness</a>
                      <a href="#" onclick="fetchProducts('bestProducts')">Best Products</a>
                      <a href="#" onclick="fetchProducts('others')">Others</a>
                    </div>
                     <!-- SHARE TO SOCIAL MEDIA -->
              
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
                
         <!-- SHARE TO SOCIAL MEDIA -->
                  </div>
                  <div class="col-lg-9 col-sm-12">
                   <h4>Latest Products</h4>
                   <div class="row" id="showProductsHere">
                  
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
</div>
	</div>




  	    <div class="tab-pane fade" id="pills-non" role="tabpanel" aria-labelledby="pills-non-tab">
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
                        <a href="#" onclick="fetchServices('allServices')">All Services</a>
                        <a href="#" onclick="fetchServices('education')">Education/Course</a>
                        <a href="#" onclick="fetchServices('onlineCourses')">Online Courses</a>
                        <a href="#" onclick="fetchServices('eCommerce')">E-Commerce</a>
                        <a href="#" onclick="fetchServices('meditation')">Spirituality/Meditation</a>
                        <a href="#" onclick="fetchServices('selfAwarness')">Self-awareness</a>
                        <a href="#" onclick="fetchServices('jobs')">Employment/Jobs</a>
                        <a href="#" onclick="fetchServices('movies')">Movies/Music</a>
                        <a href="#" onclick="fetchServices('business')">Business/ Entrepreneurship</a>
                        <a href="#" onclick="fetchServices('publicSpeaking')">Public speaking</a>
                        <a href="#" onclick="fetchServices('coach')">Coach/Mentor</a>
                        <a href="#" onclick="fetchServices('leadership')">Leadership</a>
                        <a href="#" onclick="fetchServices('opportunity')">Best opportunity</a>
                        <a href="#" onclick="fetchServices('otherServices')">Other Services</a>
                    </div>
                  </div>
                  <div class="col-lg-9 col-sm-12">
                   <h4>Latest Services</h4>
                   <div class="row" id="showServicesHere">
                   
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


