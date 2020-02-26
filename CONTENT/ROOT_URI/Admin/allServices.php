<script type="text/javascript">
	$(document).ready(function(){
		$.ajax({ 
			url: "/API/V1/?serviceList",
	        dataType:"html",
		    type: "post",
	        success: function(data){
	           var show = $('#servicesShow');
    		   show.find("div").remove();
    		   show.append(data);
	        }
	    });
	    $('#serviceCategory').change(function(){
	        $.ajax({ 
	        url: "/API/V1/?serviceListFilter",
	        data: { 
	                service: $("#serviceCategory").val() 
	              },
	            dataType:"html",
	            type: "post",
	            success: function(data){
	                var show = $('#servicesShow');
	    		   show.find("div").remove();
	    		   show.append(data);
	            }
	        });
	      });

	    $('#searchService').keypress(function(){
	    	var searchElem = $('#searchService').val();
	    	$.ajax({ 
				url: "/API/V1/?serviceSearch",
				data: { 
	              search: searchElem 
	            },
		        dataType:"html",
			    type: "post",
		        success: function(data){
		           var show = $('#servicesShow');
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
	      <h1 class="display-7 text-center">All Services</h1>

	      <div class="row">
	      <div class="col-md-10 col-lg-10 col-sm-12 ml-auto mr-auto">
	      	<div class="row">
	      		<div class="col-lg-6 col-sm-12">
	      			<div class="input-group input-group-sm mr-auto" style="width: 180px;">
			            <input type="text" name="table_search" class="form-control float-right" placeholder="Service Name" id="searchService">

			            <div class="input-group-append">
			              <button type="submit" class="btn btn-default"><i class="fas fa-search"></i></button>
			            </div>
			        </div>
	      		</div>
	      		<div class="col-lg-6 col-sm-12">
	      			<div class="input-group input-group-sm ml-auto" style="width: 180px;">
			            <select class="form-control" name="category" id="serviceCategory">
		                  <option>Select Category</option>
		                  <option" class="active">All Services</option>
	                       <option value="Education">Education/Course</option>
	                        <option value="OnlineCourses">Online Courses</option>
	                        <option value="Ecommerce">E-Commerce</option>
	                        <option value="Meditation">Spirituality/Meditation</option>
	                        <option value="SelfAwarness">Self-awareness</option>
	                        <option value="Jobs">Employment/Jobs</option>
	                        <option value="Movies">Movies/Music</option>
	                        <option value="Business">Business/ Entrepreneurship</option>
	                        <option value="PublicSpeaking">Public speaking</option>
	                        <option value="Coach">Coach/Mentor</option>
	                        <option value="Leadership">Leadership</option>
	                        <option value="Opportunity">Best opportunity</option>
	                        <option value="OtherServices">Other Services</option>
		                </select>
			        </div>
	      		</div>
	      	</div>
	        <br>
	        <div id="servicesShow">
	        	
	        </div>
	        

	      </div>
	    </div>
	      

	    </div>
	  </div>
</div>

<?php endif; ?>