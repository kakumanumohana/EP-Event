<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up </title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
<style>
 .main{
  background-image: url('data:image/jpeg;base64,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');
  background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
        font-family: Arial, Helvetica, sans-serif;
        margin: 0;
}
</style>
</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

	<div class="main">

		<!-- Sing in  Form -->
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="https://img.freepik.com/free-vector/login-concept-illustration_114360-739.jpg?w=2000" alt="sing up image">
						</figure>
						<a href="registration.jsp" class="signup-image-link">Create an
							account</a>
					</div>

					<div class="signin-form">
						<h2 class="form-title">Sign in</h2>
						<form method="post" action="login" class="register-form"
							id="login-form">
							<div class="form-group">
								<label for="username"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="username" id="username"
									placeholder="Your Name" required="required" />
							</div>
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="password"
									placeholder="Password" required="required" />
							</div>
							<div class="form-group">
								<a href="forgotPassword.jsp">Forgot Password?</a>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Log in" />
							</div>
						</form>
						<div class="social-login">
							<span class="social-label">Or login with</span>
							<ul class="socials">
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-facebook"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-twitter"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-google"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>

	</div>

	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

<script type="text/javascript">
var status=document.getElementById("status").value;
if(status=="failed"){
	swal("sorry","Wrong username or password","error");
}
else if(status=="invalidEmail"){
	swal("sorry","Please enter username ","error");
}
else if(status=="invalidPassword"){
	swal("sorry","please enter password","error");
}
else if(status=="resetSuccess"){
	swal("congrats","Reset successfull","success");
}
else if(status=="resetFailed"){
	swal("sorry","Reset failed","error");
}
</script>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>