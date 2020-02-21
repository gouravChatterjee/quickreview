<?php 
  $link = new mysqli(MYSQL_HOST,MYSQL_USER,MYSQL_PASS,MYSQL_DB);
  $link->set_charset("utf8");
    if(mysqli_connect_error()){
        die("ERROR: UNABLE TO CONNECT: ".mysqli_connect_error());
    }

//--------------INVENTORY MODULE-----------------

if (isset($_GET['business'])) {
	$bsns =  $_POST['value'];
    	$sql = "SELECT DISTINCT(PROGRAM) FROM FRP_TB_ANNEXURE_PROGRAM WHERE BUSINESS_VERTICAL = '$bsns'";
			$result = mysqli_query($link,$sql);
			echo "<option value='Select'>Select Program</option>" ;
			 if(mysqli_num_rows($result)>0){
			 	while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)) {
			 		# code...
			 		$program = $row["PROGRAM"];
	                echo "<option value='". $program ."'>" .$program ."</option>" ;
                
		}
               
     }
		// echo "hello";	
	// $bsns =  $_POST['value'];
	// echo '<option value="">Select</option>';
	// echo $bsns;

	// echo glob("CONTENT/DATA/Structure/Business/*");
	// foreach (glob("CONTENT/DATA/Structure/Business/".$bsns."/*") as $filename) {
		// echo $fileName;
		// if(is_file($filename)){
			// $response=array('file'=>'yes', // First Value
				   // );
					// echo json_encode($response);
						// $filePresent = "yes";
						// echo $filePresent;
						// exit();


					// }
	          // if(is_dir($filename)) {
	            // $i++;
	            // $FolderName=explode('/', $filename); $FolderName=end($FolderName);
	            // echo $FolderName;
	            // $response=array('folder'=>$FolderName, // First Value
				   // );
					// echo json_encode($response);
	            // echo "<option value='". $FolderName ."'>" .$FolderName ."</option>" ;
	            
	          // }
	        // }
		}

		if (isset($_GET['program'])) {
		// echo "hello";	
			
			$program =  $_POST['value'];
			// if ($program == "IIMTT Basic" || $program == "IIMTT Advance") {
			// 	$program = "IIMTT";
			// }
			if ($program == "IIMTT") {
				
				$sql = "SELECT * FROM FRP_TB_ANNEXURE_PROGRAM WHERE PROGRAM LIKE'%".$program."%'";
				
				$result = mysqli_query($link,$sql);
				echo "<option value='Select'>Select Now</option>" ;
				 if(mysqli_num_rows($result)>0){
				 	while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)) {
				 		# code...
				 		$itemName = $row["ITEM_DESC"];
				 		$itemId = $row["ITEM_ID"];
		                echo "<option value='". $itemId ."'>".$itemId." - " .$itemName ."</option>" ;
	                
				 	}
	               
	            }
		
			}else{
				$sql = "SELECT * FROM FRP_TB_ANNEXURE_PROGRAM WHERE PROGRAM = '$program'";
			$result = mysqli_query($link,$sql);
			echo "<option value='Select'>Select Now</option>" ;
			 if(mysqli_num_rows($result)>0){
			 	while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)) {
			 		# code...
			 		$itemName = $row["ITEM_DESC"];
			 		$itemId = $row["ITEM_ID"];
	                echo "<option value='". $itemId ."'>".$itemId." - " .$itemName ."</option>" ;
                
			 	}
               
            }
			}
		
		}


		if (isset($_GET['programIssue'])) {
		// echo "hello";	
			
			$program =  $_POST['value'];
			$sql = "SELECT * FROM FRP_TB_ANNEXURE_PROGRAM WHERE PROGRAM = '$program'";
			$result = mysqli_query($link,$sql);
			echo "<option value='Select'>Select now</option>" ;
			 if(mysqli_num_rows($result)>0){
			 	while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)) {
			 		# code...
			 		$itemName = $row["ITEM_DESC"];
			 		$itemId = $row["ITEM_ID"];
	                echo "<option value='". $itemName ."'>".$itemId." - " .$itemName ."</option>" ;
                
			 	}
               
            }
		

		}

		if (isset($_GET['numberOfItems'])) {
		// echo "hello";	
			
			$item =  $_POST['value'];
			$franId = $_SESSION['franId'];

			$sql = "SELECT * FROM FRANCHISE_INVENTORY WHERE FRANCHISE_ID = '$franId' AND ITEM_ID = '$item' AND ITEM_STATUS='AVAILABLE'";
			$result = mysqli_query($link,$sql);
			if(mysqli_num_rows($result)>0){
				$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
				$numberOfItems = $row["NUMBER_OF_ITEM"];
				if($numberOfItems)
					echo "Items available in stock: ".$numberOfItems;
			 	           
            }else{
            	echo "Item is not available in the stock";
            }
		

		}

		

	if (isset($_GET['updateMarksTheory'])) {
		// echo "hello";	
			
			$value =  $_POST['subject'];
			$chapter =  $_POST['ch'];

    		echo '<h4>'.$chapter.' - '.$value.'</h4><hr>
    		<form method="POST" id="form'.$value.'">
    		<div class="form-group">
				<input class="form-control" type="number" id="'.$value.'internal" name="'.$value.'internal" placeholder="Internal (30)" required>						
			</div>
			<div class="form-group">
    		<input class="form-control" type="number" id="'.$value.'attandance" name="'.$value.'attandance" placeholder="Attandance(20)" required>
			</div>
			<div class="form-group">
				<input class="form-control" type="number" id="'.$value.'final" name="'.$value.'final" placeholder="Final (50)" required onkeyup="calculateMarks('."'".$value."internal','".$value."attandance','".$value."final','".$value."net'".');">						
			</div>
    		
    		 <div class="row">
				          <div class="col"><input class="form-control" id="'.$value.'net" type="number" name="'.$value.'net" placeholder="Net Marks" readonly required></div>
				          <div class="col"><button type="submit" form="form'.$value.'" name="save'.$value.'" class="btn btn-success" value="Save"> Save</button></div>  
				        </div>

    		</form>';

			
			
		}

		if (isset($_GET['totalBasicTheory'])) {
		// echo "hello";	
			
			$value =  $_POST['id'];
			$franId = $_SESSION['franId'];


		
    		// echo $value;

    		$sql = "SELECT * FROM BS_BASIC_THEORY_MARKS WHERE FRANCHISE_ID = '$franId' AND STUDENT_ID = '$value'";
            $result = mysqli_query($link, $sql);
            if ($result) {
              if(mysqli_num_rows($result)>0){
              	
				$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
				// echo $row['STUDENT_ID'];
				$val =  $row['DM101'];
				// echo $val;
				$totalMarks = $row['DM101']+$row['DM102']+ $row['DM103']+$row['DM104']+$row['DM105']+$row['DM106']+$row['DM107']+$row['DM108'];
				echo "Total Marks:- ".$totalMarks;
                
                
                $sql2 = "UPDATE BS_BASIC_THEORY_MARKS SET  TOTAL_BASIC_THEORY = '$totalMarks' WHERE FRANCHISE_ID = '$franId' AND STUDENT_ID='$value'";
                $result2 = mysqli_query($link, $sql2);
              }
            }

			
			
		}

		if (isset($_GET['totalAdvanceTheory'])) {
		// echo "hello";	
			
			$value =  $_POST['id'];
			// $chapter =  $_POST['ch'];
			$franId = $_SESSION['franId'];

		
    		// echo $value;

    		$sql = "SELECT * FROM BS_ADVANCE_THEORY_MARKS WHERE FRANCHISE_ID = '$franId' AND STUDENT_ID = '$value'";
            $result = mysqli_query($link, $sql);
            if ($result) {
              if(mysqli_num_rows($result)>0){
              	
				$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
				// echo $row['STUDENT_ID'];
				// $val =  $row['DM101'];
				// echo $val;
				$totalMarks = $row['DA101']+$row['DA102']+ $row['DA103']+$row['DA104']+$row['DA105']+$row['DA106']+$row['DA107']+$row['DA108'];
				echo "Total Marks:- ".$totalMarks;
                
                
                $sql2 = "UPDATE BS_ADVANCE_THEORY_MARKS SET TOTAL_ADVANCE_THEORY = '$totalMarks' WHERE FRANCHISE_ID = '$franId' AND STUDENT_ID='$value'";
                $result2 = mysqli_query($link, $sql2);
              }
            }

			
			
		}

		if (isset($_GET['updateMarksPractical'])) {
		// echo "hello";	
			
			$value =  $_POST['subject'];
			$chapter =  $_POST['ch'];

		
    		echo '<h4>'.$chapter.' - '.$value.'</h4><hr>
    		<form method="POST" id="form'.$value.'">
    		<div class="form-group">
				<input class="form-control" type="number" id="'.$value.'internal" name="'.$value.'internal" placeholder="Record Presentation (10)" required >						
			</div>
			<div class="form-group">
    		<input class="form-control" type="number" id="'.$value.'attandance" name="'.$value.'attandance" placeholder="Attandance (5)" required>
			</div>
			<div class="form-group">
				<input class="form-control" type="number" id="'.$value.'final" name="'.$value.'final" placeholder="Demonstration (10)" required onkeyup="calculateMarksPractical('."'".$value."internal','".$value."attandance','".$value."final','".$value."net'".');">					
			</div>
    		
    		 <div class="row">
				          <div class="col"><input class="form-control" id="'.$value.'net" type="number" name="'.$value.'net" placeholder="Net Marks" readonly required></div>
          <div class="col"><input type="submit" name="save'.$value.'" class="btn btn-success" value="Save"></div> 
			 </div>

    		</form>';

			
			
		}

		if (isset($_GET['calculateTotalPractical'])) {
		// echo "hello";	
			
			$value =  $_POST['id'];
			// $chapter =  $_POST['ch'];
			$franId = $_SESSION['franId'];

		
    		// echo $value;

    		$sql = "SELECT * FROM BS_PRACTICAL_MARKS WHERE FRANCHISE_ID = '$franId' AND STUDENT_ID = '$value'";
            $result = mysqli_query($link, $sql);
            if ($result) {
              if(mysqli_num_rows($result)>0){
              	
				$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
				// echo $row['STUDENT_ID'];
				
				// echo $val;
				$totalMarks = $row['DMP101']+$row['DMP102']+ $row['DMP103']+$row['DMP104'];
				echo "Total Marks:- ".$totalMarks;
                
                
                $sql2 = "UPDATE BS_PRACTICAL_MARKS SET  TOTAL_PRACTICAL_MARKS = '$totalMarks' WHERE FRANCHISE_ID = '$franId' AND STUDENT_ID='$value'";
                $result2 = mysqli_query($link, $sql2);
              }
            }

			
			
		}


		if (isset($_GET['updateMarksAlbum'])) {
		// echo "hello";	
			
			$value =  $_POST['subject'];
			$chapter =  $_POST['ch'];

		
    		echo '<h4>'.$chapter.' - '.$value.'</h4><hr>
    		<form method="POST" id="form'.$value.'">
    		<div class="form-group">
				<input class="form-control" type="number" id="'.$value.'record" name="'.$value.'record" placeholder="Record Presentation (40)" required>						
			</div>
		
			<div class="form-group">
				<input class="form-control" type="number" id="'.$value.'attandance" name="'.$value.'attandance" placeholder="Attandance(10)" required onkeyup="calculateMarksAlbum('."'".$value."record','".$value."attandance','".$value."net'".');">					
			</div>
    		
    		 <div class="row">
          <div class="col"><input class="form-control" id="'.$value.'net" type="number" name="'.$value.'net" placeholder="Net Marks" readonly required></div>
          <div class="col"><input type="submit" name="save'.$value.'" class="btn btn-success" value="Save"></div>  
        </div>

    		</form>';

			
			
		}


		if (isset($_GET['calculateTotalAlbum'])) {
		// echo "hello";	
			
			$value =  $_POST['id'];
			// $chapter =  $_POST['ch'];
			$franId = $_SESSION['franId'];

		
    		// echo $value;

    		$sql = "SELECT * FROM BS_ALBUM_MARKS WHERE FRANCHISE_ID = '$franId' AND STUDENT_ID = '$value'";
            $result = mysqli_query($link, $sql);
            if ($result) {
              if(mysqli_num_rows($result)>0){
              	
				$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
				// echo $row['STUDENT_ID'];
				
				// echo $val;
				$totalMarks = $row['DMA101']+$row['DMA102']+ $row['DMA103']+$row['DMA104']+$row['DMA105'];
				echo "Total Marks:- ".$totalMarks;
                
                
                $sql2 = "UPDATE BS_ALBUM_MARKS SET  TOTAL_ALBUM_MARKS = '$totalMarks' WHERE FRANCHISE_ID = '$franId' AND STUDENT_ID='$value'";
                $result2 = mysqli_query($link, $sql2);
              }
            }

			
			
		}

		if (isset($_GET['updateMarksViva'])) {
		// echo "hello";	
			
			$value =  $_POST['subject'];
			$chapter =  $_POST['ch'];

		
    		echo '<h4>'.$chapter.' - '.$value.'</h4><hr>
    		<form method="POST" id="form'.$value.'">
    		<div class="form-group">
				<input class="form-control" type="number" id="'.$value.'communication" name="'.$value.'communication" placeholder="Communication(20)" required>						
			</div>
			<div class="form-group">
				<input class="form-control" type="number" id="'.$value.'presentation" name="'.$value.'presentation" placeholder="Presentation(20)" required>						
			</div>
		
			<div class="form-group">
				<input class="form-control" type="number" id="'.$value.'body" name="'.$value.'body" placeholder="Enter the marks" required onkeyup="calculateMarksViva('."'".$value."communication','".$value."presentation','".$value."body','".$value."net'".');">					
			</div>
    		
    		 <div class="row">
          <div class="col"><input class="form-control" id="'.$value.'net" type="number" name="'.$value.'net" placeholder="Net Marks" readonly required></div>
          <div class="col"><input type="submit" name="save'.$value.'" class="btn btn-success" value="Save"></div>  
        </div>

    		</form>';

			
			
		}

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

				echo '<div class="card border"> 
	                    <div class="card-body text-dark">
	                      <p>Category:- '.$category.'</p>
	                      <h3 style="font-weight:bold">Q:-'.$question.'</h3>
	                      <p>Asked By:- '.$uName.'</p>
	                      <a href="answers?qid='.$qId.'" class="btn btn-outline-dark"><i class="fa fa-reply" aria-hidden="true"></i>&nbsp;Answer</a>
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
		                      <a href="answers?qid='.$qId.'" class="btn btn-outline-dark"><i class="fa fa-reply" aria-hidden="true"></i>&nbsp;Answer</a>
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
			                      <a href="answers?qid='.$qId.'" class="btn btn-outline-dark"><i class="fa fa-reply" aria-hidden="true"></i>&nbsp;Answer</a>
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




?>


 