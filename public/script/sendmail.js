$(document).ready(function(){
    
	$("#submit").click(function() {
	    
	    var captcha = n1+n2;
	        
		$(".error").hide();
		var hasError = false;
		var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
		
        var captchaVal = $("#captcha").val();
        if(captchaVal != captcha) {
			$("#captcha").after('<span class="error">Incorrect test answer.</span>');
			hasError = true;
		}
		
		var nameFromVal = $("#name").val();
		if(nameFromVal == '') {
			$("#name").after('<span class="error">You forgot to enter the name.</span>');
			hasError = true;
		}
		
		var emailFromVal = $("#email").val();
		if(emailFromVal == '') {
			$("#email").after('<span class="error">You forgot to enter your email address.</span>');
			hasError = true;
		} else if(!emailReg.test(emailFromVal)) {	
			$("#email").after('<span class="error">Please enter a valid email address.</span>');
			hasError = true;
		}
		
		var messageVal = $("#message").val();
		if(messageVal == '') {
			$("#message").after('<span class="error">You forgot to enter the message.</span>');
			hasError = true;
		}
		
		
		if(hasError == false) {
			$(this).hide();
			$("#sendEmail p#loading").append('<img src="images/loader.gif" alt="Loading" id="loading" />');
			
			$.post("sendmail.php",
   				{ name: nameFromVal, email: emailFromVal, message: messageVal, captcha: captchaVal },
   					function(data) {
						$("#sendEmail").slideUp("normal", function() {				   
							
							$("#sendEmail").before('<div class="success"><span>Your email has been sent!</span></div>');											
						});
   					}
				 );
		}
		
		return false;
	});						   
});