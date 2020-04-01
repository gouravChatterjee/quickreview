<div class="container">
<?php 
$link = new mysqli(MYSQL_HOST,MYSQL_USER,MYSQL_PASS,MYSQL_DB);
$link->set_charset("utf8");
include 'Instamojo.php';
echo "<h1 class='text-center'>Please Wait, we are confirming your request!</h1>"
if(isset($_GET['payment_id'])){
	$api = new Instamojo\Instamojo('0c602e704d42eff0c969bd16d84689ce', '3ea02278545d14faac4ccee6d3dc6dc6');
	$paymentId = $_GET['payment_id'];
	$paymentRequestId = $_GET['payment_request_id'];
	$prId = $_SESSION['newReqId'];
	$type = $_SESSION['reviewType'];
	try {
	    $response = $api->paymentRequestPaymentStatus($paymentRequestId, $paymentId);
	      // print purpose of payment request
	    // print_r($response['payment']['status']);  // print status of payment
	    if ($response['payment']['status'] == "Credit") {
	    	if ($type == "PRODUCT") {
	    		$sql = "UPDATE PRODUCT SET STATUS = 'APPROVED' WHERE UNI_ID='$prId'";
	    		$result = mysqli_query($link, $sql);
	    		if ($result) {
	    			echo "<script>window.location.href = 'shareReview'</script>";
	    		}
	    	}else if ($type == "SERVICE") {
	    		$sql = "UPDATE SERVICES SET STATUS = 'APPROVED' WHERE UNI_ID='$prId'";
	    		$result = mysqli_query($link, $sql);
	    		if ($result) {
	    			echo "<script>window.location.href = 'shareReview'</script>";
	    		}
	    	}
	    	
	    }else{
	    	echo "<div class='alert alert-danger'><h3>Sorry! Your request couldn't be processed! If your money is deducted then it will be refunded in your bank account.</h3></div>";
	    }

	}
	catch (Exception $e) {
	    print('Error: ' . $e->getMessage());
	}
}

 ?>
</div>
