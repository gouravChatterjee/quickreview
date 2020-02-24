<?php 
  $link = new mysqli(MYSQL_HOST,MYSQL_USER,MYSQL_PASS,MYSQL_DB);
  $link->set_charset("utf8");
    if(mysqli_connect_error()){
        die("ERROR: UNABLE TO CONNECT: ".mysqli_connect_error());
    }

//--------------INVENTORY MODULE-----------------

			if (isset($_GET['calculateTotalViva'])) {
		// echo "hello";	
			
			$value =  $_POST['id'];
			// $chapter =  $_POST['ch'];
			$franId = $_SESSION['franId'];

		
    		// echo $value;

    		$sql = "SELECT * FROM BS_VIVA_MARKS WHERE FRANCHISE_ID = '$franId' AND STUDENT_ID = '$value'";
            $result = mysqli_query($link, $sql);
            if ($result) {
              if(mysqli_num_rows($result)>0){
              	
				$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
				// echo $row['STUDENT_ID'];
				
				// echo $val;
				$totalMarks = $row['DMV101'];
				echo "Total Marks:- ".$totalMarks;
                
                
                $sql2 = "UPDATE BS_VIVA_MARKS SET  TOTAL_VIVA_MARKS = '$totalMarks' WHERE FRANCHISE_ID = '$franId' AND STUDENT_ID='$value'";
                $result2 = mysqli_query($link, $sql2);
              }
            }

			
			
		}

		if (isset($_GET['updateMarksPractice'])) {
		// echo "hello";	
			
			$value =  $_POST['subject'];
			$chapter =  $_POST['ch'];

		
    		echo '<h4>'.$chapter.' - '.$value.'</h4><hr>
    		<form method="POST" id="form'.$value.'">
    		<div class="form-group">
				<input class="form-control" type="number" id="'.$value.'classPlan" name="'.$value.'classPlan" placeholder="Class Planning(70)" required>						
			</div>
			<div class="form-group">
				<input class="form-control" type="number" id="'.$value.'attandance" name="'.$value.'attandance" placeholder="Attandance(10)" required>						
			</div>
		
			<div class="form-group">
			<input class="form-control" type="number" id="'.$value.'classControl" name="'.$value.'classControl" placeholder="Class Control(20)" required onkeyup="calculateMarksTeaching('."'".$value."classPlan','".$value."attandance','".$value."classControl','".$value."net'".');">					
			</div>
    		
    		 <div class="row">
          <div class="col"><input class="form-control" id="'.$value.'net" type="number" name="'.$value.'net" placeholder="Net Marks" readonly required></div>
          <div class="col"><input type="submit" name="save'.$value.'" class="btn btn-success" value="Save"></div>  
        </div>

    		</form>';

			
			
		}

		if (isset($_GET['calculateTotalPractice'])) {
		// echo "hello";	
			
			$value =  $_POST['id'];
			// $chapter =  $_POST['ch'];
			$franId = $_SESSION['franId'];

		
    		// echo $value;

    		$sql = "SELECT * FROM BS_PRACTICE_TEACHING_MARKS WHERE FRANCHISE_ID = '$franId' AND STUDENT_ID = '$value'";
            $result = mysqli_query($link, $sql);
            if ($result) {
              if(mysqli_num_rows($result)>0){
              	
				$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
				// echo $row['STUDENT_ID'];
				
				// echo $val;
				$totalMarks = $row['DMT101']+$row['DMT102'];
				echo "Total Marks:- ".$totalMarks;
                
                
                $sql2 = "UPDATE BS_PRACTICE_TEACHING_MARKS SET  TOTAL_PRACTICE_TEACHING_MARKS = '$totalMarks' WHERE FRANCHISE_ID = '$franId' AND STUDENT_ID='$value'";
                $result2 = mysqli_query($link, $sql2);
              }
            }

			
			
		}

		if (isset($_GET['removeEnquiry'])) {
		// echo "hello";	
			
			$name =  $_POST['name'];
			$phone =  $_POST['phone'];
			// $chapter =  $_POST['ch'];
			$franId = $_SESSION['franId'];

		
    		// echo $value;

    		 $sql="DELETE FROM FRP_TB_STUDENT_ENQUIRY WHERE FRANCHISE_ID = '$franId' AND STUDENT_NAME='$name' AND PHONE_NO='$phone'";
      $result = mysqli_query($link, $sql);
       if(!$result){
          echo '<div class="alert alert-danger">There was a database error </div>';
          echo '<div class="alert alert-danger">' . mysqli_error($link) . '</div>';
          exit;
        }if($result){
          

             echo '<div class="alert alert-success" style="text-align:center; ">Successfully Deleted </div>';
              echo "
                        <script>
                        
                          window.location.href='StudentListIIMTT';
                        </script>
                        ";
            }
			
			
		}

		if (isset($_GET['removeStudent'])) {
		// echo "hello";	
			
			$studentId = $_POST['student'];
			$franId = $_SESSION['franId'];
			// $chapter =  $_POST['ch'];

		
    		// echo $value;

    		 $sql="DELETE FROM FRP_TB_STUDENT_REGISTER WHERE FRANCHISE_ID = '$franId' AND STUDENT_UNI_ID='$studentId'";
		      $result = mysqli_query($link, $sql);
		       if(!$result){
		          echo '<div class="alert alert-danger">There was a database error </div>';
		          echo '<div class="alert alert-danger">' . mysqli_error($link) . '</div>';
		          exit;
		        }if($result){
		          

		             echo '<div class="alert alert-success" style="text-align:center; ">Successfully Deleted </div>';
		              echo "
		                        <script>
		                        
		                          window.location.href='StudentListIIMTT';
		                        </script>
		                        ";
		            }
			
			
		}

		if (isset($_GET['removeBatch'])) {
		// echo "hello";	
			
			$batchName = $_POST['name'];
			$batchYear = $_POST['year'];
			$franId = $_SESSION['franId'];

    		 $sql="DELETE FROM FRP_BATCH WHERE FRANCHISE_ID = '$franId' AND BATCH_YEAR='$batchYear' AND BATCH_NAME='$batchName'";
      $result = mysqli_query($link, $sql);
       if(!$result){
          echo '<div class="alert alert-danger">There was a database error </div>';
          echo '<div class="alert alert-danger">' . mysqli_error($link) . '</div>';
          exit;
        }if($result){
          

             echo '<div class="alert alert-success" style="text-align:center; ">Successfully Deleted </div>';
              echo "
                        <script>
                          window.location.href='StudentListIIMTT';
                        </script>
                        ";
            }
			
			
		}

		if (isset($_GET['joining'])) {
			$msg = null;
			$franId = $_SESSION['franId'];
			$directory = "CONTENT/UPLOADS/FRANCHISE/".$franId."/JoiningCheckList/";
			$files = glob($directory . "*");
			if ($files){
			 $filecount = count($files);
			}
			// echo $filecount;
			if($filecount < 7){
				$msg = "Show";
			}else{
				$msg = "Dont Show";
			}
			$obj = new stdClass();
			$obj->msg = $msg;
			$myJSON = json_encode($obj);
			echo $myJSON;

		}

//---------------------------INVENTORY MODULE--------------------




		if (isset($_GET['fetchStudent'])) {
		
			$session =  $_POST['session'];
			// echo $session;
			$franId = $_SESSION['franId'];

			$sql = "SELECT * FROM FRP_TB_STUDENT_REGISTER WHERE FRANCHISE_ID='$franId' AND SESSION = '$session'";
			$result = mysqli_query($link,$sql);
			 if(mysqli_num_rows($result)>0){
			 	while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)) {
			 		# code...
			 		$studentId = $row["STUDENT_UNI_ID"];
	                $studentName = $row["STUDENT_NAME"];
	                echo "<option value='". $studentId ."'>" .$studentId ." - ".$studentName."</option>" ;
                
			 	}
               
            }
	
		}
		//-----------------------------------Item Details-----------------------

		if (isset($_GET['item'])) {
			$item =  $_POST['value'];
			$number =  $_POST['number'];
			$program =  $_POST['program'];
			$price =  $_POST['price'];
			$inventoryId =  $_POST['inventoryId'];
			$numberReal = $number;

			// echo $hello;
			 $sql="SELECT * FROM FRP_TB_ANNEXURE_PROGRAM WHERE ITEM_ID='$item'";
		       $result = mysqli_query($link, $sql);
		     if($result){
		        if(mysqli_num_rows($result)>0){
		        	$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
		        	$subItems = $row['SUB_ITEMS_DETAILS'];
		        	$itemName = $row['ITEM_DESC'];
		        	
		        }
	    	}
	    	 	
	    	if ($subItems!=null){ 
	    		echo '<div class="row"><div class="col-6">
							<div class="input-group">
								<h4>'.$itemName.':-</h4>
					 		</div>
						</div>
						<div class="col-6">
							<div class="input-group">
								<input type="number" name="noMain" value="'.$number.'" class="form-control" disabled>
							</div>
								<input type="hidden" name="noMainReal" value="'.$numberReal.'" class="form-control">
								<input type="hidden" name="itemId" value="'.$item.'" class="form-control">
								<input type="hidden" name="itemName" value="'.$itemName.'" class="form-control">
								<input type="hidden" name="program" value="'.$program.'" class="form-control">
								<input type="hidden" name="price" value="'.$price.'" class="form-control">
								<input type="hidden" name="inventoryId" value="'.$inventoryId.'" class="form-control">
								<input type="hidden" name="price" value="'.$price.'" class="form-control">
						 
					 		
						</div></div><hr>';
		      
	    		$arr = json_decode($subItems, true);
		        foreach($arr as $key=>$value){
		        	echo '<div class="row"><div class="col-6">
							<div class="input-group">
								<h6>'.$key.':-</h6>
					 		</div>
						</div>
						<div class="col-6">
							<div class="input-group">
								<input type="number" name="noSub[]" value="'.$number.'" class="form-control">
								<input type="hidden" name="itemIds[]" value="'.$item.'" class="form-control">
								<input type="hidden" name="subItemNames[]" value="'.$key.'" class="form-control">
						 
					 		</div>
						</div></div><br>';

		          // echo $key."\n";

		      }

			}else{
				echo '<div class="row"><div class="col-6">
							<div class="input-group">
								<h4>'.$itemName.':-</h4>
					 		</div>
						</div>
						<div class="col-6">
							<div class="input-group">
								<input type="number" name="noMain" value="'.$number.'" class="form-control">
							</div>
								<input type="hidden" name="noMainReal" value="'.$numberReal.'" class="form-control">
								<input type="hidden" name="itemId" value="'.$item.'" class="form-control">
								<input type="hidden" name="itemName" value="'.$itemName.'" class="form-control">
								<input type="hidden" name="program" value="'.$program.'" class="form-control">
								<input type="hidden" name="price" value="'.$price.'" class="form-control">
								<input type="hidden" name="inventoryId" value="'.$inventoryId.'" class="form-control">
								<input type="hidden" name="price" value="'.$price.'" class="form-control">
						 
					 		
						</div></div><hr>';
			}
		}



		if (isset($_GET['details'])) {
			$itemId =  $_POST['value'];
			$inventoryId =  $_POST['inventoryId'];
			$franId = $_SESSION['franId'];						
			$sql="SELECT * FROM FRANCHISE_INVENTORY WHERE FRANCHISE_ID='$franId' AND INVENTORY_ID='$inventoryId'";
		       $result = mysqli_query($link, $sql);		
		     if($result){
		        if(mysqli_num_rows($result)>0){
		        	$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
		        	$details = $row['DETAILS'];
		        			        	
		        }
	    	}
			$files = glob("CONTENT/UPLOADS/FRANCHISE/".$franId."/DispatchBill/".$itemId."/*");
			echo '
    			
				<h3>Details:- </h3>
				<h5>'.$details.'</h5>
				<a href="/'.$files[0].'" id="download" class="btn btn-success btn-block" name="1" download><i class="fa fa-download"></i> Download Dispatch Bill</a>
        		';
			
		}


		if (isset($_GET['subItems'])) {
			$itemId =  $_POST['item'];
			$franId = $_SESSION['franId'];
			$sql = "SELECT * FROM FRANCHISE_INVENTORY WHERE FRANCHISE_ID='$franId' AND ITEM_ID='$itemId' AND ITEM_STATUS='AVAILABLE'";
			$result = mysqli_query($link, $sql);
			if($result){
				 if(mysqli_num_rows($result)>0){
				 	
		        	$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
		        	$subItems = $row['SUB_ITEMS_DETAILS'];
		        	if($subItems != null){
		        		echo '<table class="table table-bordered table-hover" id="taa">
						  <thead class="thead-dark">
						    <tr>
						      <th scope="col">Item Name</th>
						      <th scope="col">Number of Items</th>
						      </tr>';
						$arr = json_decode($subItems, true);
			        	foreach($arr as $key=>$value){
			        		echo '<tr><td>'.$key.'</td><td>'.$value.'</td></tr>';
			        	}
		        	}else{
		        		echo '<div class="alert alert-warning">No Sub Items! </div>';
		        	}
		        	
		        			        	
		        }
			}else{
				echo mysql_error($link);
			}
		}


// -------------------------------------------------------------------------------------------

		if (isset($_GET['fetchStudentName'])) {
			$name =  $_POST['search'];
			// echo $name;
			$franId = $_SESSION['franId'];
			 
			$sql = "SELECT * FROM FRP_TB_STUDENT_REGISTER WHERE FRANCHISE_ID='$franId' AND  STUDENT_NAME LIKE'%".$name."%'";
			
			$result = mysqli_query($link,$sql);
			 if(mysqli_num_rows($result)>0){
			 	 $response = array();
			 	while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)) {
			 		# code...
			 		$studentId = $row["STUDENT_UNI_ID"];
	                $studentName = $row["STUDENT_NAME"];
	                $response[] = array("value"=>$studentId." - ".$studentName,"id"=>$studentId);
	                // echo "<option value='". $studentId ."'>" .$studentId ." - ".$studentName."</option>" ;
                
			 	}
			 	echo json_encode($response);
            }
	
		}

		if (isset($_GET['trainingHitCounter'])) {
			$franId = $_SESSION['franId'];
			$sql = "SELECT * FROM BS_USER WHERE BS_USER_ID='$franId'";
			$result = mysqli_query($link,$sql);
			$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
			$hit = $row['TRAINING_COUNTER'];
			$hit = $hit+1;
			$sql2 = "UPDATE BS_USER SET TRAINING_COUNTER = $hit WHERE BS_USER_ID = '$franId'";
			$result2 = mysqli_query($link,$sql2);
			if($result2){
				echo "done";
			}else{
				echo mysqli_error($link);
			}
		}



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

		if (isset($_GET['franchiseListFilter'])) {
			$region = $_POST['region'];
			if(strcasecmp($region, "ALL")==0){
				$sql = "SELECT * FROM BS_USER WHERE BS_USER_TYPE = 'FRANCHISE'";
			}else{
				$sql = "SELECT * FROM BS_USER WHERE BS_USER_TYPE = 'FRANCHISE' AND REGION = '$region'";
			}
			
			$result = mysqli_query($link,$sql);
			if($result){
	  			
				if(mysqli_num_rows($result)>0){
					while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){

						$jsonD=json_decode($row['USER_JSOND']);

						echo '<tr>
							      <td>'.$row['BS_USER_ID'].'</td>
							     <td><a href="franchiseDetails?id='.$row['BS_USER_ID'].'">'.$row['USER_FULL_NAME'].'</a></td>
							     <td>'.$row["CENTER_NAME"].'</td>
							     <td>'.$row['USER_PHONE'].'</td>
							      <td>'.$row['USER_EMAIL'].'</td>
							      <td>'.$jsonD->{'Details'}->{'Programs'}.'</td>
							      <td><a href="updateFranchise?id='.$row['BS_USER_ID'].'"><button class="btn btn-sm btn-success" title="Update Details"><i class="fas fa-edit"></i></button></a></td>
							  </tr>';

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

				echo '<div class="card" style="background:#00CCCD; color:black;"> 
	                    <div class="card-body">
	                      <p>Category:- '.$category.'</p>
	                      <h3 style="font-weight:bold">Q:-'.$question.'</h3>
	                      <p class="getAnswer">Asked By:- '.$uName.'</p>
	                      <button class="btn btn-outline-dark" onclick="openAnswer(`'.$qId.'`);" data-toggle="modal" data-target="#answerModal"><i class="fa fa-reply" aria-hidden="true" ></i>&nbsp;Answer</button>
	                    </div>
	                  </div>';

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

					echo '<div class="card border"> 
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

						echo '<div class="card border"> 
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
			    echo '<div class="card"> 
	                    <div class="card-body" style="background:#67E6DC;">
							<p>Category:- '.$category.'</p>
		                      <h3 style="font-weight:bold">Q:-'.$question.'</h3>
		                      <p>Asked By:- '.$uName.'</p>	

	                    </div>
	                  </div>';
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

						echo '<div class="card"> 
			                    <div class="card-body text-dark">
			                      <h3 style="font-weight:bold">Reply:-'.$ans.'</h3>
			                      <p>Replied By:- '.$uName.'</p>
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
			if($_SESSION['LoggedIn']){
				echo '<div class="card"> 
                    <div class="card-body">
						<textarea placeholder="Enter your answer" name="answer" class="form-control" rows="3" id="ansText"></textarea><br>
						<input type="hidden" name="questionId" id="quesId" value="'.$quesID.'">
						<button type="button" onclick="submitAnswer()" class="btn btn-success">Submit</button>	

                    </div>
                  </div>';
			}
		}	

		if (isset($_GET['submitAnswer'])) {
			  $ansId = D_create_UserId();
			  $answer = $_POST['answer'];
			  $questionId = $_POST['questionId'];
			  $userId = $_SESSION['userId'];
			  $userName = $_SESSION['userName'];
			  $sql = "INSERT INTO ANSWERS (`QUESTION_ID`, `ANSWER_ID`, `USER_ID`, `USER_NAME`, `ANSWER`) VALUES ('$questionId', '$ansId', '$userId', '$userName', '$answer')";
			  $result = mysqli_query($link,$sql);
			  if ($result) {
			    echo '<div class="container"><div class="alert alert-success">Successfully submitted Question</div></div>';
			  }else{
			    echo mysqli_error($link);
			  }
		}



?>


 