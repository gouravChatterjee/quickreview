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

<?php 
$link = new mysqli(MYSQL_HOST,MYSQL_USER,MYSQL_PASS,MYSQL_DB);
$link->set_charset("utf8");

if(mysqli_connect_error()){
	die("ERROR: UNABLE TO CONNECT: ".mysqli_connect_error());
}
$qid = $_GET['qid'];

$sql = "SELECT * FROM QUESTIONS WHERE QUES_ID = '$qid'";
$result = mysqli_query($link, $sql);
$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
$uId = $row['USER_ID'];
$qId = $row['QUES_ID'];
$uName = $row['USER_NAME'];
$question = $row['QUESTION_DETAILS'];
$category = $row['CATEGORY'];

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
        <div class="card">
          <div class="card-body">
            <h3 style="font-weight: bold">Q:- <?php echo $question; ?></h3>
            <p>Asked By:- <?php echo $uName; ?></p>
          </div>
        </div>
        <!-- general form elements -->
      	<?php if($_SESSION['LoggedIn'] ): ?>
      	<div class="card">
        	<div class="card-header"><h4>Ask what is on your mind?</h4></div>
        	<div class="card-body">
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
        	<div class="card-header"><h4>Discussion</h4></div>
        	<div class="card-body">
        		 <?php 
                      $sql = "SELECT * FROM QUESTIONS ORDER BY ID DESC";
                      $result = mysqli_query($link,$sql);
                      if ($result) {
                      	 if(mysqli_num_rows($result)>0){
	                        while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){ 
	                          $uId = $row['USER_ID'];
                            $qId = $row['ID'];
	                          $uName = $row['USER_NAME'];
	                          $question = $row['QUESTION_DETAILS'];
                            echo '<div class="card border-"> 
                              <div class="card-body text-dark">
                                <p>Category:- asji</p>
                                <h3 style="font-weight:bold">'.$question.'</h3>
                                <p>Asked By:- '.$uName.'</p>
                                <a href="answers?qid='.$qId.'" class="btn btn-outline-light"><i class="fa fa-reply" aria-hidden="true"></i>&nbsp;Answer</a>
                              </div>
                            </div>';
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

