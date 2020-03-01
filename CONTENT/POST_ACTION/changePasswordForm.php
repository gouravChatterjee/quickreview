<script>
      if ( window.history.replaceState ) {
          window.history.replaceState( null, null, window.location.href );
      }
</script>
<?php 
	if(isset($_POST["FORM_NAME"]) && $_POST["FORM_NAME"]== 'changePasswordForm'){
		 $link = mysqli_connect(MYSQL_HOST,MYSQL_USER,MYSQL_PASS,MYSQL_DB);

		 $email = $_SESSION["user"];



		 $password = $_POST['password1'];
		 $password2 = $_POST['password2'];
		 if ($password != $password2) {
              // echo '<div class="alert alert-danger">Password does not match</div>';
            $GLOBALS['alert_info'] .= DaddToBsAlert("Password does not match");
          }else{
          	 $password = md5($password);
          	 $sql = "UPDATE USERS SET PASSWORD='$password' WHERE EMAIL='$email'";
          	 $result = mysqli_query($link, $sql);
          	 if($result){
          	 	echo '<script>
                alert("Password changed successfully");
             </script>';
          	 }else{
              echo '<script>
                alert("Something wrong!");
             </script>';
             }
          }


	}
	if ($GLOBALS['alert_info']!="") {
  		echo $GLOBALS['alert_info'];
	}
 ?>

 