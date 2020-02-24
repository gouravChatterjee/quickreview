<script type="text/javascript">
	$(document).ready(function(){
		$.ajax({ 
			url: "/API/V1/?productList",
	        dataType:"html",
		    type: "post",
	        success: function(data){
	           var show = $('#productsShow');
    		   show.find("div").remove();
    		   show.append(data);
	        }
	    });
	    $('#productCategory').change(function(){
	        $.ajax({ 
	        url: "/API/V1/?productListFilter",
	        data: { 
	                product: $("#productCategory").val() 
	              },
	            dataType:"html",
	            type: "post",
	            success: function(data){
	                var show = $('#productsShow');
	    		   show.find("div").remove();
	    		   show.append(data);
	            }
	        });
	      });

	    $('#searchProduct').keypress(function(){
	    	var searchElem = $('#searchProduct').val();
	    	$.ajax({ 
				url: "/API/V1/?productSearch",
				data: { 
	              search: searchElem 
	            },
		        dataType:"html",
			    type: "post",
		        success: function(data){
		           var show = $('#productsShow');
	    		   show.find("div").remove();
	    		   show.append(data);
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
$sql = "SELECT * FROM PRODUCT ORDER_BY ID DESC";

$result = mysqli_query($link,$sql);
?>

<?php if($_SESSION['LoggedIn'] && $_SESSION['userAdmin']): ?>
<div class="container">
  
	<div class="row">
	    <div class="col-md-10 ml-auto mr-auto">
	      <h1 class="display-7 text-center">All Products</h1>

	      <div class="row">
	      <div class="col-md-10 col-lg-10 col-sm-12 ml-auto mr-auto">
	      	<div class="row">
	      		<div class="col-lg-6 col-sm-12">
	      			<div class="input-group input-group-sm mr-auto" style="width: 180px;">
			            <input type="text" name="table_search" class="form-control float-right" placeholder="Product Name" id="searchProduct">

			            <div class="input-group-append">
			              <button type="submit" class="btn btn-default"><i class="fas fa-search"></i></button>
			            </div>
			        </div>
	      		</div>
	      		<div class="col-lg-6 col-sm-12">
	      			<div class="input-group input-group-sm ml-auto" style="width: 180px;">
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
	        <br>
	        <div id="productsShow">
	        	
	        </div>
	        

	      </div>
	    </div>
	      

	    </div>
	  </div>
</div>

<?php endif; ?>