$("#iimttregform").submit(function(event){ 
    //prevent default php processing
    event.preventDefault();
    //collect user inputs
    var datatopost = $(this).serializeArray();
//    console.log(datatopost);
    //send them to signup.php using AJAX
    $.ajax({
        url: "/registerS",
        type: "POST",
        data: datatopost,
        success: function(data){
            if(data){
                $("#registermsg").html(data);
            }
        },
        error: function(){
            $("#registermsg").html("<div class='alert alert-danger'>There was an error with the Ajax Call. Please try again later.</div>");
            
        }
    
    });

});