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
	    $('#region').change(function(){
	    	$.ajax({ 
				url: "/API/V1/?franchiseListFilter",
				data: { 
	              region: $("#region").val() 
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
	      	<div class="input-group input-group-sm" style="width: 180px;">
	            <input type="text" name="table_search" class="form-control float-right" placeholder="Product Name" id="searchProduct">

	            <div class="input-group-append">
	              <button type="submit" class="btn btn-default"><i class="fas fa-search"></i></button>
	            </div>
	        </div><br>
	        <div id="productsShow">
	        	
	        </div>
	        

	      </div>
	    </div>
	      

	    </div>
	  </div>
</div>

<?php endif; ?>