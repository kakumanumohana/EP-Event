<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Landing Page</title>
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="app.css">

</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
    <div class="container">
        <div class="forms-container">
            <div class="signin-signup">
            <form class="sign-in-form" method="post" action="login">
                <h2 class="title">Sign In</h2>
                <div class="input-field">
                    <i class='bx bxs-user'></i>
                    <input type="text"  name="username" placeholder="Username">
                </div>
                <div class="input-field">
                    <i class='bx bxs-lock-alt'></i>
                    <input type="password" name="password" placeholder="Password">
                </div>
                <div class="form-group">
								<a href="newPassword.jsp">Forgot Password?</a>
							</div>
                <input type="submit" value="Login" class="btn solid">
                
                
                <p class="social-text">Or sign in with social platforms</p>

                <div class="social-media">
                    <a href="#" class="social-icon">
                        <i class='bx bxl-facebook'></i>
                    </a>
                    <a href="#" class="social-icon">
                        <i class='bx bxl-twitter'></i>
                    </a>
                    <a href="#" class="social-icon">
                        <i class='bx bxl-google'></i>
                    </a>
                    <a href="#" class="social-icon">
                        <i class='bx bxl-linkedin'></i>
                    </a>
                </div>
            </form>
            <form class="sign-up-form" method="post" action="register">
                <h2 class="title">Sign Up</h2>
                <div class="input-field">
                    <i class='bx bxs-user'></i>
                    <input type="text" name="name" placeholder="Full Name">
                </div>
                <div class="input-field">
                    <i class='bx bxs-user'></i>
                    <input type="text" name="email"placeholder="Email">
                </div>
                <div class="input-field">
                    <i class='bx bxs-lock-alt'></i>
                    <input type="text" name ="pass" placeholder="Password">
                </div>
                <div class="input-field">
                    <i class='bx bxs-user'></i>
                    <input type="text"  name="re_pass"placeholder="Confirm Password">
                </div>
                <div class="input-field">
                    <i class='bx bxs-user'></i>
                    <input type="text" name="contact" placeholder="Contact">
                </div>
                <input type="submit" value="Sign Up" class="btn solid">
                <p class="social-text">Or sign up with social platforms</p>

                <div class="social-media">
                    <a href="#" class="social-icon">
                        <i class='bx bxl-facebook'></i>
                    </a>
                    <a href="#" class="social-icon">
                        <i class='bx bxl-twitter'></i>
                    </a>
                    <a href="#" class="social-icon">
                        <i class='bx bxl-google'></i>
                    </a>
                    <a href="#" class="social-icon">
                        <i class='bx bxl-linkedin'></i>
                    </a>
                </div>
            </form>
            </div>
        </div>
        <div class="panels-container">
            <div class="panel left-panel">
                <div class="content">
                    <h3>New here?</h3>
                    <p>Welcome back to our login page! We're delighted to see you again. 
                    </p>
                    <button class="btn transparent" id="sign-up-btn">Sign up</button>
                </div>
                <img src="/images/Profiling_Monochromatic.png" class="image" alt="">
            </div>
            <div class="panel right-panel">
                <div class="content">
                    <h3>One of us?</h3>
                    <p>Welcome to our registration page! We are thrilled to have you here. Whether you are a new user or returning to our 
                    platform, we want to ensure a seamless and hassle-free registration process for you.
                    </p>
                    <button class="btn transparent" id="sign-in-btn">Sign in</button>
                </div>
                <img src="images/Authentication_Outline.png" class="image" alt="">
            </div>
        </div>
    </div>
    <script src="app.js"></script>
    <!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

<script type="text/javascript">
var status=document.getElementById("status").value;
if(status=="success"){
	swal("congrats","Account created successfully","success");
}
if(status=="invalidName"){
	swal("sorry","Please Enter name","error");
}
if(status=="invalidEmail"){
	swal("sorry","Please Enter email","error");
}
if(status=="invalidpassword"){
	swal("sorry","Please Enter password","error");
}
if(status=="invalidReenteredPassword"){
	swal("sorry","Password do not match","error");
}
if(status=="invalidMobilenumber"){
	swal("sorry","Please Enter Mobile number","error");
}
if(status=="invalidMobileLength"){
	swal("sorry","Please Enter valid Mobile number","error");
}
if(status=="resetSuccess"){
	swal("congrats","Please Updated successfully","success");
}
if(status=="resetFailed"){
	swal("sorry","Reset failed","error");
}
	
</script>
</body>
</html>