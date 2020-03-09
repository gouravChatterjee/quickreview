<style type="text/css">
    .carousel-item {
      height: 100vh;
      width: 100%;
      min-height: 500px;
      /*position: absolute;*/
      background: no-repeat  scroll;
      -webkit-background-size: cover;
      -moz-background-size: cover;
      -o-background-size: cover;
      background-size: cover;
      opacity: 0.7;
      background-color: rgba(0, 0, 0, 0.7);
      filter: brightness(90%);
    }


  .navbar {
    height: 60px;
    background: transparent;
    border: none;
    color: white;
    z-index: 100;
    transition: background-color 1s ease 0s;
  }

.navbar.solid {
  background: #fff;
  transition: background-color 1s ease 0s;
  box-shadow: 0 0 4px grey;

  .navbar-brand {
    color: #C57ED3;
    transition: color 1s ease 0s;
  }

}
    
    /*.imageG{
      margin-top: 20px;
    }*/
  </style>

<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
      <div class="carousel-item bgImage active" style="background-image: url('/IMAGES/home/image-3-compressed.jpg')">
        <div class="carousel-caption d-none d-md-block">
          <a href="#" class="goDown" style="text-decoration: none; color: #fff;"><i class="fas fa-arrow-circle-down" style="font-size: 40px;"></i></a>
           <!-- <button class="btn btn-success">Down</button> -->
        </div>
      </div>
      <!-- Slide Two - Set the background image for this slide in the line below -->
      <div class="carousel-item bgImage" style="background-image: url('/IMAGES/home/image-2-compressed.jpg')">
        <div class="carousel-caption d-none d-md-block">
          <h5><a href="#" class="goDown" style="text-decoration: none; color: #fff;"><i class="fas fa-arrow-circle-down" style="font-size: 40px;"></i></a></h5>
        </div>
      </div>
      <!-- Slide One - Set the background image for this slide in the line below -->
      <div class="carousel-item bgImage" style="background-image: url('/IMAGES/home/image-1-compressed.jpg')">
        <div class="carousel-caption d-none d-md-block">
          <a href="#" class="goDown" style="text-decoration: none; color: #fff;"><i class="fas fa-arrow-circle-down" style="font-size: 40px;"></i></a>
        </div>
      </div>
      
      
      <!-- Slide Three - Set the background image for this slide in the line below -->
      
      <div class="carousel-item bgImage" style="background-image: url('/IMAGES/home/image-4-compressed.jpg')">
        <div class="carousel-caption d-none d-md-block">
          <a href="#" class="goDown" style="text-decoration: none; color: #fff;"><i class="fas fa-arrow-circle-down" style="font-size: 40px;"></i></a>
        </div>
      </div>
      <div class="carousel-item bgImage" style="background-image: url('/IMAGES/home/image-5-compressed.jpg')">
        <div class="carousel-caption d-none d-md-block">
          <a href="#" class="goDown" style="text-decoration: none; color: #fff;"><i class="fas fa-arrow-circle-down" style="font-size: 40px;"></i></a>
        </div>
      </div>
      <div class="carousel-item bgImage" style="background-image: url('/IMAGES/home/image-0-compressed.jpg')">
        <div class="carousel-caption d-none d-md-block">
          <a href="#" class="goDown" style="text-decoration: none; color: #fff;"><i class="fas fa-arrow-circle-down" style="font-size: 40px;"></i></a>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>

  </div>