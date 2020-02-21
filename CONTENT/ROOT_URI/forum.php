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

<script type="text/javascript">
  $(document).ready(function(){
    $.ajax({ 
      url: "/API/V1/?questionList",
        dataType:"html",
        type: "post",
          success: function(data){
            // console.log(data);
            var ques = $('#questionsDiv');
            ques.find("div").remove();
            ques.append(data);
          }
      });

      $('#productCategory').change(function(){
        $.ajax({ 
        url: "/API/V1/?questionListFilter",
        data: { 
                product: $("#productCategory").val() 
              },
            dataType:"html",
            type: "post",
            success: function(data){
                var ques = $('#questionsDiv');
                ques.find("div").remove();
                ques.append(data);
            }
        });
      });

      $('#searchQuestion').keypress(function(){
        var searchElem = $('#searchQuestion').val();
        $.ajax({ 
        url: "/API/V1/?questionListSearch",
        data: { 
                search: searchElem 
              },
            dataType:"html",
            type: "post",
            success: function(data){
                var ques = $('#questionsDiv');
                ques.find("div").remove();
                ques.append(data);
            }
        });
      });
  });
</script>

<?php 
$link = new mysqli(MYSQL_HOST,MYSQL_USER,MYSQL_PASS,MYSQL_DB);
$link->set_charset("utf8");

if(mysqli_connect_error()){
	die("ERROR: UNABLE TO CONNECT: ".mysqli_connect_error());
}

if ($_SESSION['LoggedIn']) {
	$userId = $_SESSION['userId'];
	$userName = $_SESSION["userName"];
}

if (isset($_POST['submit'])) {
  $quesId = D_create_UserId();
	$question = $_POST['question'];
	$sql = "INSERT INTO QUESTIONS (`QUES_ID`, `USER_ID`, `USER_NAME`, `QUESTION_DETAILS`) VALUES ('$quesId', '$userId', '$userName', '$question')";
	$result = mysqli_query($link,$sql);
	if ($result) {
		echo '<div class="container"><div class="alert alert-success">Successfully submitted Question</div></div>';
	}else{
		echo mysqli_error($link);
	}

}
?>


<div class="container">
	<div class="row">
          <!-- left column -->
      <div class="col-md-12 ml-auto mr-auto">
        <!-- general form elements -->
      	<?php if($_SESSION['LoggedIn'] ): ?>
      	<div class="card">
        	<div class="card-header"><h4>Ask what is on your mind?</h4></div>
        	<div class="card-body">
            <div class="col-2">
              <select class="form-control" name="category">
                <option>Select Category</option>
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
            </div><br>
        		<form method="POST">
        			<textarea name="question" placeholder="Ask a question" class="form-control" rows="3" required></textarea><br>
        			<input type="submit" name="submit" class="btn btn-success" value="Submit Question">
        		</form>
        	</div>
      	</div>
        <?php else: ?>
          <div class="alert alert-warning"><a href="signIn" style=" color: black;">Sign In</a> to ask a question!</div>
		    <?php endif; ?>
      	<div class="card">
        	<div class="card-header">
            <h4 class="float-left">Discussion</h4>
            <div class="col-lg-6 col-sm-8 ml-auto float-right">
              <div class="row">
                  <div class="col-8">
                    <div class="input-group input-group-sm">
                        <input type="text" name="table_search" class="form-control" placeholder="Search a question" id="searchQuestion">
                        <div class="input-group-append">
                          <button type="submit" class="btn btn-default"><i class="fas fa-search"></i></button>
                        </div>
                      </div>
                  </div>
              <div class="col-4">
                <select class="form-control" name="category" id="productCategory">
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
          </div>
        	<div class="card-body" id="questionsDiv">
        		
        	</div>
      	</div>
      </div>
  	</div>
	
</div>

