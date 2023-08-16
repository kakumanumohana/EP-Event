<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous" />


<!-- *******  Font Awesome Icons Link  ******* -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>

	<!-- *******  Link To Goggle Fonts  *******  -->
	
<style>
	body{
	width: 100%;
	min-height: 100vh;
background-image: url("imageabout.jpg");
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
        font-family: Arial, Helvetica, sans-serif;
        margin: 0;	color: white;
}
*{
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}
.container{
	width: 100%;
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 30px 8%;
}
.container .row{
	display: flex;
	justify-content: space-between;
	width: 100%;
	max-width: 1100px;
}
.row section.col{
	display: flex;
	flex-direction: column;
}
.row section.left{
	flex-basis: 35%;
	min-width: 320px;
	margin-right: 60px;
}
.row section.right{
	flex-basis: 60%;
}
section.left .contactTitle h2{
	position: relative;
	font-size: 28px;
	color: #ddd;
	display: inline-block;
	margin-bottom: 25px;
}
section.left .contactTitle h2::before{
	content: '';
	position: absolute;
	width: 50%;
	height: 1px;
	background-color: #888;
	top: 120%;
	left: 0;
}
section.left .contactTitle h2::after{
	content: '';
	position: absolute;
	width: 25%;
	height: 3px;
	background-color: dodgerblue;
	top: calc(120% - 1px);
	left: 0;
}
section.left .contactTitle p{
	font-size: 17px;
	color: #ccc;
	letter-spacing: 1px;
	line-height: 1.2;
	padding-bottom: 22px;
}
section.left .contactInfo{
	margin-bottom: 16px;
}
.contactInfo .iconGroup{
	display: flex;
	align-items: center;
	margin: 25px 0px;
}
.iconGroup .icon{
	width: 45px;
	height: 45px;
	border: 2px solid dodgerblue;
	border-radius: 50%;
	margin-right: 20px;
	position: relative;
}
.iconGroup .icon i{
	font-size: 20px;
	color: #ddd;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}
.iconGroup .details span{
	display: block;
	color: #888;
	font-size: 18px;
}
.iconGroup .details span:nth-child(1){
	text-transform: uppercase;
	color: #ccc;
}

#a {
  font-size:15px;
  color:White;
}


section.left .socialMedia{
	display: flex;
	justify-content: flex-start;
	align-items: center;
	flex-wrap: wrap;
	margin: 22px 0px 20px;
}
.socialMedia a{
	width: 35px;
	height: 35px;
	text-decoration: none;
	text-align: center;
	margin-right: 15px;
	border-radius: 5px;
	background-color: dodgerblue;
	transition: 0.4s;
}
.socialMedia a i{
	color: #ddd;
	font-size: 18px;
	line-height: 35px;
	border: 1px solid transparent;
	transition-delay: 0.4s;
}
.socialMedia a:hover{
	transform: translateY(-5px);
	background-color: #2e2e2e;
	color: dodgerblue;
	border: 1px solid dodgerblue;
}
.socialMedia a:hover i{
	color: dodgerblue;
}

/* Code for the right section (column) */

.row section.right .messageForm{
	display: flex;
	justify-content: space-between;
	flex-wrap: wrap;
	padding-top: 30px;
}
.row section.right .inputGroup{
	margin: 18px 0px;
	position: relative;
}
.messageForm .halfWidth{
	flex-basis: 48%;
}
.messageForm .fullWidth{
	flex-basis: 100%;
}
.messageForm input, .messageForm textarea{
	width: 100%;
	font-size: 18px;
	padding: 2px 0px;
	background-color: #2e2e2e;
	color: #ddd;
	border: none;
	border-bottom: 2px solid #666;
	outline: none;
}
.messageForm textarea{
	resize: none;
	height: 220px;
	display: block;
}
textarea::-webkit-scrollbar{
	width: 5px;
}
textarea::-webkit-scrollbar-track{
	background-color: #1e1e1e;
	border-radius: 15px;
}
textarea::-webkit-scrollbar-thumb{
	background-color: dodgerblue;
	border-radius: 15px;
}
.inputGroup label{
	position: absolute;
	left: 0;
	bottom: 4px;
	color: #888;
	font-size: 18px;
	transition: 0.4s;
	pointer-events: none;
}
.inputGroup:nth-child(4) label{
	top: 2px;
}
.inputGroup input:focus ~ label, .inputGroup textarea:focus ~ label,
.inputGroup input:valid ~ label, .inputGroup textarea:valid ~ label
{
	transform: translateY(-30px);
	font-size: 16px;
}
.inputGroup button{
	padding: 8px 16px;
	font-size: 18px;
	background-color: dodgerblue;
	color: #ddd;
	border: 1px solid transparent;
	border-radius: 25px;
	outline: none;
	cursor: pointer;
	box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.3);
	transition: 0.4s;
}
.inputGroup button:hover{
	background-color: #2e2e2e;
	color: dodgerblue;
	box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.3);
	border: 1px solid dodgerblue;
}
@media(max-width: 1100px){
	.messageForm .halfWidth{
		flex-basis: 100%;
	}
}
@media(max-width: 900px){
	.container .row{
		flex-wrap: wrap;
	}
	.row section.left, .row section.right{
		flex-basis: 100%;
		margin: 0px;
	}
}
#a {
  font-size:15px;
  color:White;
}
	</style>
	


</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

<nav class="navbar navbar-expand-lg bg-dark navbar-dark" >
  <div class="container-fluid">
    <a class="navbar-brand" href="nav.jsp">EMS</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" href="nav.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="aboutus.jsp">About Us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="trial.jsp">Events</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="contactus.jsp">Contact Us</a>
        </li>
        
      </ul>

    </div>
  </div>
  <li class="nav-item">
          <a id="a" class="nav-link active" >Hello ,<%=session.getAttribute("name")%></a>
        </li>
</nav>





<div class="container">
		<main class="row">
			
			<!--  *******   Left Section (Column) Starts   *******  -->

			<section class="col left">
				
				<!--  *******   Title Starts   *******  -->

				<div class="contactTitle">
					<h2>Get In Touch</h2>
					<p>

Contacting Regarding University Event Management System.</p>
				</div>

				<!--  *******   Title Ends   *******  -->

				<!--  *******   Contact Info Starts   *******  -->

				<div class="contactInfo">
					
					<div class="iconGroup">
						<div class="icon">
							<i class="fa-solid fa-phone"></i>
						</div>
						<div class="details">
							<span>Phone</span>
							<span>+91-9848880683</span>
						</div>
					</div>

					<div class="iconGroup">
						<div class="icon">
							<i class="fa-solid fa-envelope"></i>
						</div>
						<div class="details">
							<span>Email</span>
							<span>universityevents@gmail.com</span>
						</div>
					</div>

					<div class="iconGroup">
						<div class="icon">
							<i class="fa-solid fa-location-dot"></i>
						</div>
						<div class="details">
							<span>Location</span>
							<span>K L Deemed to be University, Green Fields, Vaddeswaram</span>
						</div>
					</div>

				</div>

				<!--  *******   Contact Info Ends   *******  -->

				<!--  *******   Social Media Starts   *******  -->

				<div class="socialMedia">
					<a href="#"><i class="fa-brands fa-facebook-f"></i></a>
					<a href="#"><i class="fa-brands fa-twitter"></i></a>
					<a href="#"><i class="fa-brands fa-instagram"></i></a>
					<a href="#"><i class="fa-brands fa-linkedin-in"></i></a>
				</div>

				<!--  *******   Social Media Ends   *******  -->

			</section>

			<!--  *******   Left Section (Column) Ends   *******  -->

			<!--  *******   Right Section (Column) Starts   *******  -->

			<section class="col right">
				
				<!--  *******   Form Starts   *******  -->

				<form class="messageForm" method="post" action="contact">
					
					<div class="inputGroup halfWidth">
						<input type="text" name="name" required="required" />
						<label>Your Name</label>
					</div>

					<div class="inputGroup halfWidth">
						<input type="email" name="email" required="required"/>
						<label>Email</label>
					</div>

					<div class="inputGroup fullWidth">
						<input type="text" name="sub" required="required"/>
						<label>Subject</label>
					</div>

					<div class="inputGroup fullWidth">
						<textarea  name="ss" required="required"></textarea>
						<label>Say Something</label>
					</div>

					<div class="inputGroup fullWidth">
						<button>Send Message</button>
					</div>

				</form>

				<!--  *******   Form Ends   *******  -->
			</section>

			<!--  *******   Right Section (Column) Ends   *******  -->

		</main>
	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

<script type="text/javascript">
var status=document.getElementById("status").value;
if(status=="success"){
	swal("Thankyou","We will get back to you soon","success");
}
if(status=="invalidName"){
	swal("sorry","Please Enter name","error");
}
if(status=="invalidEmail"){
	swal("sorry","Please Enter email","error");
}
if(status=="leftSpace"){
	swal("sorry","Please Say Something","error");
}
if(status=="Entersubject"){
	swal("sorry","Please enter the subject","error");
}

	
</script>
	

</body>
</html>