<script>
	  if ( window.history.replaceState ) {
	      window.history.replaceState( null, null, window.location.href );
	  }
</script>

<?php 
$link = new mysqli(MYSQL_HOST,MYSQL_USER,MYSQL_PASS,MYSQL_DB);
$link->set_charset("utf8");

 ?>

 <?php 
 if(!$_SESSION['LoggedIn'] ){
 	echo "<script>window.location.href ='signUp?usertype=select';</script>";
 }
 	

?>