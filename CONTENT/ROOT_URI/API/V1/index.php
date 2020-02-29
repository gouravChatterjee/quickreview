<?php 
  $link = new mysqli(MYSQL_HOST,MYSQL_USER,MYSQL_PASS,MYSQL_DB);
  $link->set_charset("utf8");
    if(mysqli_connect_error()){
        die("ERROR: UNABLE TO CONNECT: ".mysqli_connect_error());
    }

//--------------INVENTORY MODULE-----------------

		



 // ------------- ADMIN SIDE ------------------
// <td>'.$jsonD->{'Address'}->{'Agreement'}.'</td>franchiseListFilter
		// <a href="CONTENT/UPLOADS/FRANCHISE/'.$row["BS_USER_ID"].'/Agreement/'.$jsonD->{'Address'}->{'Agreement'}.'" download><button class="btn btn-sm btn-success" title="Download Agreement Copy"><i class="fas fa-download"></i></button></a>

		if (isset($_GET['productList'])) {
			$sql = "SELECT * FROM PRODUCT ORDER BY ID DESC";

			$result = mysqli_query($link,$sql);
			if($result){
	  			
				if(mysqli_num_rows($result)>0){
					while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){

						// $jsonD=json_decode($row['USER_JSOND']);
						$id = $row['UNI_ID'];
						$name = $row['PR_NAME'];
						$category = $row['CATEGORY'];
						$price = $row['PRICE'];
						$imgName = $row['IMAGE'];

						echo '<div class="card flex-row flex-wrap">
					          <div class="card-body">
					          <div class="row">
					          <div class="col-lg-4 col-sm-6">
					          	<img src="/CONTENT/UPLOADS/PRODUCT/'.$id.'/'.$imgName.'" height="100%" width="100%" alt="">
					          </div>
					          <div class="col-lg-8 col-sm-6">
					          	<div class=" px-2">
						            <h4 class="card-title"><b>'.$name.'</b></h4>
						            <p class="card-text">'.$category.'</p>
						            <a href="singleProduct?id='.$id.'" class="btn btn-primary">GO</a>
						        </div>
					          </div>
					          </div>
					          	
					          </div>
					         
					        </div>';

					}

				}else{
					echo '<div class="alert alert-danger">No Data</div>';
				}

			}else{
				echo '<div class="alert alert-danger">Error Running the Query</div>';
				echo '<div class="alert alert-danger">' . mysqli_error($link) . '</div>';
			}
		}


		if (isset($_GET['productSearch'])) {
			$search = $_POST['search'];
			$sql = "SELECT * FROM PRODUCT WHERE PR_NAME LIKE'%".$search."%'";
			
			$result = mysqli_query($link,$sql);
			if($result){
	  			
				if(mysqli_num_rows($result)>0){
					while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){

						// $jsonD=json_decode($row['USER_JSOND']);

						$id = $row['UNI_ID'];
						$name = $row['PR_NAME'];
						$category = $row['CATEGORY'];
						$price = $row['PRICE'];
						$imgName = $row['IMAGE'];

						echo '<div class="card flex-row flex-wrap">
					          <div class="card-body">
					          <div class="row">
					          <div class="col-lg-4 col-sm-6">
					          	<img src="/CONTENT/UPLOADS/PRODUCT/'.$id.'/'.$imgName.'" height="100%" width="100%" alt="">
					          </div>
					          <div class="col-lg-8 col-sm-6">
					          	<div class=" px-2">
						            <h4 class="card-title"><b>'.$name.'</b></h4>
						            <p class="card-text">'.$category.'</p>
						            <a href="singleProduct?id='.$id.'" class="btn btn-primary">GO</a>
						        </div>
					          </div>
					          </div>
					          	
					          </div>
					         
					        </div>';

					}

				}else{
					echo '<div class="alert alert-danger">No Data</div>';
				}

			}else{
				echo '<div class="alert alert-danger">Error Running the Query</div>';
				echo '<div class="alert alert-danger">' . mysqli_error($link) . '</div>';
			}
		}	

		if (isset($_GET['productListFilter'])) {
			$product = $_POST['product'];
			if ($product == 'all') {
				$sql = "SELECT * FROM PRODUCT";
			}else{
				$sql = "SELECT * FROM PRODUCT WHERE CATEGORY='$product'";
			}
			$result = mysqli_query($link,$sql);
			if($result){
				if(mysqli_num_rows($result)>0){
					while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){

						// $jsonD=json_decode($row['USER_JSOND']);

						$id = $row['UNI_ID'];
						$name = $row['PR_NAME'];
						$category = $row['CATEGORY'];
						$price = $row['PRICE'];
						$imgName = $row['IMAGE'];

						echo '<div class="card flex-row flex-wrap">
					          <div class="card-body">
					          <div class="row">
					          <div class="col-lg-4 col-sm-6">
					          	<img src="/CONTENT/UPLOADS/PRODUCT/'.$id.'/'.$imgName.'" height="100%" width="100%" alt="">
					          </div>
					          <div class="col-lg-8 col-sm-6">
					          	<div class=" px-2">
						            <h4 class="card-title"><b>'.$name.'</b></h4>
						            <p class="card-text">'.$category.'</p>
						            <a href="singleProduct?id='.$id.'" class="btn btn-primary">GO</a>
						        </div>
					          </div>
					          </div>
					          	
					          </div>
					         
					        </div>';

					}

				}else{
					echo '<div class="alert alert-danger">No Data</div>';
				}

			}else{
				echo '<div class="alert alert-danger">Error Running the Query</div>';
				echo '<div class="alert alert-danger">' . mysqli_error($link) . '</div>';
			}
		}	

		// --------------------SERVICE LIST API---------------------

		if (isset($_GET['serviceList'])) {
			$sql = "SELECT * FROM SERVICES ORDER BY ID DESC";

			$result = mysqli_query($link,$sql);
			if($result){
	  			
				if(mysqli_num_rows($result)>0){
					while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){

						// $jsonD=json_decode($row['USER_JSOND']);
						$id = $row['UNI_ID'];
						$name = $row['SR_NAME'];
						$category = $row['CATEGORY'];
						$price = $row['PRICE'];
						$imgName = $row['IMAGE'];

						echo '<div class="card flex-row flex-wrap">
					          <div class="card-body">
					          <div class="row">
					          <div class="col-lg-4 col-sm-6">
					          	<img src="/CONTENT/UPLOADS/SERVICES/'.$id.'/'.$imgName.'" height="100%" width="100%" alt="">
					          </div>
					          <div class="col-lg-8 col-sm-6">
					          	<div class=" px-2">
						            <h4 class="card-title"><b>'.$name.'</b></h4>
						            <p class="card-text">'.$category.'</p>
						            <a href="singleService?id='.$id.'" class="btn btn-primary">GO</a>
						        </div>
					          </div>
					          </div>
					          	
					          </div>
					         
					        </div>';

					}

				}else{
					echo '<div class="alert alert-danger">No Data</div>';
				}

			}else{
				echo '<div class="alert alert-danger">Error Running the Query</div>';
				echo '<div class="alert alert-danger">' . mysqli_error($link) . '</div>';
			}
		}


		if (isset($_GET['searchService'])) {
			$search = $_POST['search'];
			$sql = "SELECT * FROM SERVICES WHERE SR_NAME LIKE'%".$search."%'";
			
			$result = mysqli_query($link,$sql);
			if($result){
	  			
				if(mysqli_num_rows($result)>0){
					while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){

						// $jsonD=json_decode($row['USER_JSOND']);

						$id = $row['UNI_ID'];
						$name = $row['SR_NAME'];
						$category = $row['CATEGORY'];
						$price = $row['PRICE'];
						$imgName = $row['IMAGE'];

						echo '<div class="card flex-row flex-wrap">
					          <div class="card-body">
					          <div class="row">
					          <div class="col-lg-4 col-sm-6">
					          	<img src="/CONTENT/UPLOADS/SERVICES/'.$id.'/'.$imgName.'" height="100%" width="100%" alt="">
					          </div>
					          <div class="col-lg-8 col-sm-6">
					          	<div class=" px-2">
						            <h4 class="card-title"><b>'.$name.'</b></h4>
						            <p class="card-text">'.$category.'</p>
						            <a href="singleService?id='.$id.'" class="btn btn-primary">GO</a>
						        </div>
					          </div>
					          </div>
					          	
					          </div>
					         
					        </div>';

					}

				}else{
					echo '<div class="alert alert-danger">No Data</div>';
				}

			}else{
				echo '<div class="alert alert-danger">Error Running the Query</div>';
				echo '<div class="alert alert-danger">' . mysqli_error($link) . '</div>';
			}
		}	

		if (isset($_GET['serviceListFilter'])) {
			$service = $_POST['service'];
			if ($service == 'all') {
				$sql = "SELECT * FROM SERVICES";
			}else{
				$sql = "SELECT * FROM SERVICES WHERE CATEGORY='$service'";
			}
			$result = mysqli_query($link,$sql);
			if($result){
				if(mysqli_num_rows($result)>0){
					while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){

						// $jsonD=json_decode($row['USER_JSOND']);

						$id = $row['UNI_ID'];
						$name = $row['SR_NAME'];
						$category = $row['CATEGORY'];
						$price = $row['PRICE'];
						$imgName = $row['IMAGE'];

						echo '<div class="card flex-row flex-wrap">
					          <div class="card-body">
					          <div class="row">
					          <div class="col-lg-4 col-sm-6">
					          	<img src="/CONTENT/UPLOADS/SERVICES/'.$id.'/'.$imgName.'" height="100%" width="100%" alt="">
					          </div>
					          <div class="col-lg-8 col-sm-6">
					          	<div class=" px-2">
						            <h4 class="card-title"><b>'.$name.'</b></h4>
						            <p class="card-text">'.$category.'</p>
						            <a href="singleService?id='.$id.'" class="btn btn-primary">GO</a>
						        </div>
					          </div>
					          </div>
					          	
					          </div>
					         
					        </div>';

					}

				}else{
					echo '<div class="alert alert-danger">No Data</div>';
				}

			}else{
				echo '<div class="alert alert-danger">Error Running the Query</div>';
				echo '<div class="alert alert-danger">' . mysqli_error($link) . '</div>';
			}
		}	

// ---------------- QUESTION LIST API ----------

if (isset($_GET['questionList'])) {
	$sql = "SELECT * FROM QUESTIONS ORDER BY ID DESC";
	$result = mysqli_query($link,$sql);
	if($result){
		if(mysqli_num_rows($result)>0){
			while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
			  $uId = $row['USER_ID'];
              $qId = $row['QUES_ID'];
              $uName = $row['USER_NAME'];
              $question = $row['QUESTION_DETAILS'];
              $category = $row['CATEGORY'];
              $userType = $row['USER_TYPE'];

              if($userType == 'ADMIN'){
              	echo '<div class="card" style="background:#0A3D62; color:#fff;"> 
	                    <div class="card-body">
	                      <p>Category:- '.$category.'</p>
	                      <h3 style="font-weight:bold">Q:-'.$question.'</h3>
	                      <p class="getAnswer">Asked By:- ADMIN</p>
	                      <button class="btn btn-outline-light" onclick="openAnswer(`'.$qId.'`);" data-toggle="modal" data-target="#answerModal"><i class="fa fa-reply" aria-hidden="true" ></i>&nbsp;Answer</button>
	                    </div>
	                  </div>';
              }else{
              	echo '<div class="card" style="background:#00CCCD; color:black;"> 
	                    <div class="card-body">
	                      <p>Category:- '.$category.'</p>
	                      <h3 style="font-weight:bold">Q:-'.$question.'</h3>
	                      <p class="getAnswer">Asked By:- '.$uName.'</p>
	                      <button class="btn btn-outline-dark" onclick="openAnswer(`'.$qId.'`);" data-toggle="modal" data-target="#answerModal"><i class="fa fa-reply" aria-hidden="true" ></i>&nbsp;Answer</button>
	                    </div>
	                  </div>';
              }

			}
// href="answers?qid='.$qId.'"
		}else{
			echo '<div class="alert alert-danger">No Data</div>';
		}

	}else{
		echo '<div class="alert alert-danger">Error Running the Query</div>';
		echo '<div class="alert alert-danger">' . mysqli_error($link) . '</div>';
	}
}

	if (isset($_GET['questionListFilter'])) {
		$product = $_POST['product'];
		if($product == 'all'){
			$sql = "SELECT * FROM QUESTIONS ORDER BY ID DESC";
		}else{
			$sql = "SELECT * FROM QUESTIONS WHERE CATEGORY = '$product' ORDER BY ID DESC";
		}
		$result = mysqli_query($link,$sql);
		if($result){
  			
			if(mysqli_num_rows($result)>0){
				while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
				  $uId = $row['USER_ID'];
	              $qId = $row['QUES_ID'];
	              $uName = $row['USER_NAME'];
	              $question = $row['QUESTION_DETAILS'];
	              $category = $row['CATEGORY'];
				  $userType = $row['USER_TYPE'];

              if($userType == 'ADMIN'){
              	echo '<div class="card" style="background:#0A3D62; color:#fff;"> 
	                    <div class="card-body">
	                      <p>Category:- '.$category.'</p>
	                      <h3 style="font-weight:bold">Q:-'.$question.'</h3>
	                      <p class="getAnswer">Asked By:- ADMIN</p>
	                      <button class="btn btn-outline-light" onclick="openAnswer(`'.$qId.'`);" data-toggle="modal" data-target="#answerModal"><i class="fa fa-reply" aria-hidden="true" ></i>&nbsp;Answer</button>
	                    </div>
	                  </div>';
              }else{
              	echo '<div class="card" style="background:#00CCCD; color:black;"> 
	                    <div class="card-body">
	                      <p>Category:- '.$category.'</p>
	                      <h3 style="font-weight:bold">Q:-'.$question.'</h3>
	                      <p class="getAnswer">Asked By:- '.$uName.'</p>
	                      <button class="btn btn-outline-dark" onclick="openAnswer(`'.$qId.'`);" data-toggle="modal" data-target="#answerModal"><i class="fa fa-reply" aria-hidden="true" ></i>&nbsp;Answer</button>
	                    </div>
	                  </div>';
              }

			}


			}else{
				echo '<div class="alert alert-danger">No Data</div>';
			}

		}else{
			echo '<div class="alert alert-danger">Error Running the Query</div>';
			echo '<div class="alert alert-danger">' . mysqli_error($link) . '</div>';
		}
	}

		if (isset($_GET['questionListSearch'])) {
			$search = $_POST['search'];
			$sql = "SELECT * FROM QUESTIONS WHERE QUESTION_DETAILS LIKE'%".$search."%'";
			
			$result = mysqli_query($link,$sql);
			if($result){
	  			
				if(mysqli_num_rows($result)>0){
					while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
					  $uId = $row['USER_ID'];
		              $qId = $row['QUES_ID'];
		              $uName = $row['USER_NAME'];
		              $question = $row['QUESTION_DETAILS'];
		              $category = $row['CATEGORY'];
		              $userType = $row['USER_TYPE'];

		              if($userType == 'ADMIN'){
		              	echo '<div class="card" style="background:#0A3D62; color:#fff;"> 
			                    <div class="card-body">
			                      <p>Category:- '.$category.'</p>
			                      <h3 style="font-weight:bold">Q:-'.$question.'</h3>
			                      <p class="getAnswer">Asked By:- ADMIN</p>
			                      <button class="btn btn-outline-light" onclick="openAnswer(`'.$qId.'`);" data-toggle="modal" data-target="#answerModal"><i class="fa fa-reply" aria-hidden="true" ></i>&nbsp;Answer</button>
			                    </div>
			                  </div>';
		              }else{
		              	echo '<div class="card" style="background:#00CCCD; color:black;"> 
			                    <div class="card-body">
			                      <p>Category:- '.$category.'</p>
			                      <h3 style="font-weight:bold">Q:-'.$question.'</h3>
			                      <p class="getAnswer">Asked By:- '.$uName.'</p>
			                      <button class="btn btn-outline-dark" onclick="openAnswer(`'.$qId.'`);" data-toggle="modal" data-target="#answerModal"><i class="fa fa-reply" aria-hidden="true" ></i>&nbsp;Answer</button>
			                    </div>
			                  </div>';
		              }
						echo '<div class="card border" style="background:#00CCCD; color:black;"> 
			                    <div class="card-body text-dark">
			                      <p>Category:- '.$category.'</p>
			                      <h3 style="font-weight:bold">Q:-'.$question.'</h3>
			                      <p>Asked By:- '.$uName.'</p>
			                      <button class="btn btn-outline-dark" onclick="openAnswer(`'.$qId.'`);" data-toggle="modal" data-target="#answerModal"><i class="fa fa-reply" aria-hidden="true" ></i>&nbsp;Answer</button>
			                    </div>
			                  </div>';

					}

				}else{
					echo '<div class="alert alert-danger">No Data</div>';
				}

			}else{
				echo '<div class="alert alert-danger">Error Running the Query</div>';
				echo '<div class="alert alert-danger">' . mysqli_error($link) . '</div>';
			}
		}
		if (isset($_GET['answers'])) {
			$quesID = $_GET['qid'];
			$sqlQues = "SELECT * FROM QUESTIONS WHERE QUES_ID ='$quesID'";
			$resultQues = mysqli_query($link,$sqlQues);
			if ($resultQues) {
				$rowQues = mysqli_fetch_array($resultQues,MYSQLI_ASSOC);
				$uName = $rowQues['USER_NAME'];
			    $question = $rowQues['QUESTION_DETAILS'];
			    $category = $rowQues['CATEGORY'];
			    $userType = $rowQues['USER_TYPE'];
			    if ($userType == 'ADMIN') {
			    	echo '<div class="card"> 
	                    <div class="card-body" style="background:#0A3D62;color:#fff;">
							<p>Category:- '.$category.'</p>
		                      <h3 style="font-weight:bold">Q:-'.$question.'</h3>
		                      <p>Asked By:- ADMIN</p>	

	                    </div>
	                  </div>';
			    }else{
			    	echo '<div class="card"> 
	                    <div class="card-body" style="background:#67E6DC;">
							<p>Category:- '.$category.'</p>
		                      <h3 style="font-weight:bold">Q:-'.$question.'</h3>
		                      <p>Asked By:- '.$uName.'</p>	

	                    </div>
	                  </div>';
			    }
			    
			}else{
				echo mysqli_error($link);
			}
			
			$sql = "SELECT * FROM ANSWERS WHERE QUESTION_ID ='$quesID' ORDER BY ID DESC";
			$result = mysqli_query($link,$sql);
			
			if($result){
				if(mysqli_num_rows($result)>0){
					while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
					  $uId = $row['ANSWER_ID'];
		              $qId = $row['QUES_ID'];
		              $uName = $row['USER_NAME'];
		              $ans = $row['ANSWER'];
		              $userType = $row['USER_TYPE'];

		              if ($userType == 'ADMIN') {
		              	echo '<div class="card"> 
			                    <div class="card-body text-dark" style="background:#DAE0E2;">
			                      <h3 style="font-weight:bold">Reply:-'.$ans.'</h3>
			                      <p>Replied By:- ADMIN</p>
			                    </div>
			                  </div>';
		              }else{
		              	echo '<div class="card"> 
			                    <div class="card-body text-dark">
			                      <h3 style="font-weight:bold">Reply:-'.$ans.'</h3>
			                      <p>Replied By:- '.$uName.'</p>
			                    </div>
			                  </div>';
		              }

					}
				}else{
					echo '<div class="alert alert-danger">No Data</div>';
				}

			}else{
				echo '<div class="alert alert-danger">Error Running the Query</div>';
				echo '<div class="alert alert-danger">' . mysqli_error($link) . '</div>';
			}
			if($_SESSION['LoggedIn']){
				echo '<div class="card"> 
                    <div class="card-body">
						<textarea placeholder="Enter your answer" name="answer" class="form-control" rows="3" id="ansText"></textarea><br>
						<input type="hidden" name="questionId" id="quesId" value="'.$quesID.'">
						<button type="button" onclick="submitAnswer()" class="btn btn-success">Submit</button>	

                    </div>
                  </div>';
			}else{
				echo '<div class="alert alert-warning"><a href="signIn" style=" color: black;">Sign In</a> to give a reply!</div>';
			}
          
		}	

		if (isset($_GET['submitAnswer'])) {
			  $ansId = D_create_UserId();
			  $answer = $_POST['answer'];
			  $questionId = $_POST['questionId'];
			  $userId = $_SESSION['userId'];
			  $userName = $_SESSION['userName'];
			  $userType = $_POST['userType'];
			  $sql = "INSERT INTO ANSWERS (`QUESTION_ID`, `ANSWER_ID`, `USER_ID`, `USER_TYPE`, `USER_NAME`, `ANSWER`) VALUES ('$questionId', '$ansId', '$userId', '$userType', '$userName', '$answer')";
			  $result = mysqli_query($link,$sql);
			  if ($result) {
			    echo '<div class="container"><div class="alert alert-success">Successfully submitted Question</div></div>';
			  }else{
			    echo mysqli_error($link);
			  }
		}



?>


 