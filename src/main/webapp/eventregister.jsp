<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="styl.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <style>
 body{
  background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRX46weFVyQzslonY-n1Myaejq-4AvRVZQNY93AHpShdQ&s');
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
<div class="container">
    <div class="title">Registration</div>
    <div class="content">
      <form action="event" method="post">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Full Name</span>
            <input type="text" name="fullname" placeholder="Enter your name" required>
          </div>
          <div class="input-box">
            <span class="details">Username</span>
            <input type="text" name="name" placeholder="Enter your username" required>
          </div>
          <div class="input-box">
            <span class="details">Email</span>
            <input type="email" name="email" placeholder="Enter your email" required>
          </div>
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="text" name="contact" placeholder="Enter your number" required>
          </div>
          <div class="input-box">
            <span class="details">Event Name</span>
            <input type="text" name="ename" placeholder="Enter event name" required>
          </div>
          <div class="input-box">
            <span class="details">Confirm Password</span>
            <input type="text" name="pass" placeholder="password" required>
          </div>
        </div>
        <div class="gender-details">
          <input type="radio" name="gender" id="dot-1">
          <input type="radio" name="gender" id="dot-2">
          <input type="radio" name="gender" id="dot-3">
          <span class="gender-title">Gender</span>
          <div class="category">
            <label for="dot-1">
            <span class="dot one"></span>
            <span class="gender">Male</span>
          </label>
          <label for="dot-2">
            <span class="dot two"></span>
            <span class="gender">Female</span>
          </label>
          <label for="dot-3">
            <span class="dot three"></span>
            <span class="gender">Prefer not to say</span>
            </label>
          </div>
        </div>
        <div class="button">
          <input type="submit" value="Register">
        </div>
      </form>
    </div>
  </div>

<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

<script type="text/javascript">
var status=document.getElementById("status").value;
if(status=="success"){
	swal("Thankyou","You are successufully registered for event","success");
}
if(status=="invalidName"){
	swal("sorry","Please Enter name","error");
}
if(status=="invalidUserName"){
	swal("sorry","Please Enter User name","error");
}
if(status=="invalidEmail"){
	swal("sorry","Please Enter email","error");
}
if(status=="invalidMobileNumber"){
	swal("sorry","Please enter valid mobile number","error");
}
if(status=="invalidPassword"){
	swal("sorry","Please valid Password","error");
}

	
</script>
	


</body>
</html>