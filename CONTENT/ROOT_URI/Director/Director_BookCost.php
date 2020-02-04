<?php



$link = mysqli_connect(MYSQL_HOST,MYSQL_USER,MYSQL_PASS,MYSQL_DB_BEANSTALKFP);

if(mysqli_connect_error()){
	die("ERROR: UNABLE TO CONNECT: ".mysqli_connect_error());
}


$sql = "SELECT * FROM ".FRP_TB_BOOK_COST;

$result = mysqli_query($link,$sql);







?>

<div class="container">
	<div class="row">
        <div class="col-md-12">
          <h1 class="display-4">Book Cost Database</h1>
          <p class="lead text-muted">Welcome Admin</p>
          <!-- Dashboard Actions -->
          <div class="btn-group mb-4" role="group">
            <a href="bookCostAdd" class="btn btn-success">
             Add Book</a>
            <a href="bookCostEdit" class="btn btn-primary">
             </i>
              Edit Books</a>
            <a href="deleteProgram" class="btn btn-danger">
              </i>
              Delete Books</a>
          </div>
	<table class="table table-bordered table-hover ">
	  <thead class="thead-dark">
	    <tr>
	      <th scope="col">Serial Number</th>

	      <th scope="col">Program Id</th>
	      <th scope="col">Program Desc</th>
	      <th scope="col">Item Id</th>
	      <th scope="col">Item Desc</th>
	      <th scope="col">Picture</th>
	      <th scope="col">Cost</th>


	    </tr>
	  </thead>
	  <tbody>
	  	<?php


	  		if($result){
				if(mysqli_num_rows($result)>0){
					while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
						$serial = $row['FRP_BOOK_ID'];

						$programId = $row['PROGRAM_ID'];
						$programDesc = $row['PROGRAM_DESCR'];
						$itemId = $row['ITEM_ID'];
						$itemDesc = $row['ITEM_DESCR'];
						$picture = $row['IMAGE'];
						$cost = $row['COST'];


						// if($itemPic){
						// 	$itemPic = "None";
						// }




						echo "<tr>
							      <td>$serial</td>

							      <td>$programId</td>
							      <td>$programDesc</td>
							      <td>$itemId</td>
							      <td>$itemDesc</td>
							      <td>$picture</td>
							      <td>$cost</td>

							  </tr>";

					}

				}else{
					echo '<div class="alert alert-danger">No Data</div>';
				}

			}else{
				echo '<div class="alert alert-danger">Error Running the Query</div>';
				echo '<div class="alert alert-danger">' . mysqli_error($link) . '</div>';
			}






	  	 ?>


	  </tbody>
	</table>
</div>
</div>
