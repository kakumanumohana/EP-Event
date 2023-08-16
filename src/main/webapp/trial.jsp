<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<link rel="stylesheet" type="text/css"
	href="{% static 'css/main.css' %}">
<style>


 body{
  background-image: url('https://images.pexels.com/photos/255377/pexels-photo-255377.jpeg?cs=srgb&dl=pexels-miguel-%C3%A1-padri%C3%B1%C3%A1n-255377.jpg&fm=jpg');
  background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
        font-family: Arial, Helvetica, sans-serif;
        margin: 0;
}
h1, h2, h3, h4, h5, h6 {
	color: hsl(0, 0%, 30%);
}

#a {
  font-size:15px;
  color:White;
}
.box-element {
	box-shadow: hsl(0, 0%, 80%) 0 0 16px;
	background-color: #fff;
	border-radius: 4px;
	padding: 10px;
}

.thumbnail {
	width: 100%;
	height: 200px;
	-webkit-box-shadow: -1px -3px 5px -2px rgba(214, 214, 214, 1);
	-moz-box-shadow: -1px -3px 5px -2px rgba(214, 214, 214, 1);
	box-shadow: -1px -3px 5px -2px rgba(214, 214, 214, 1);
}

.product {
	border-radius: 0 0 4px 4px;
}

.bg-dark {
	background-color: #4f868c !important;
}
.ro{
 padding: 0px 110px;
}
#cart-icon {
	width: 25px;
	display: inline-block;
	margin-left: 15px;
}

#cart-total {
	display: block;
	text-align: center;
	color: #fff;
	background-color: red;
	width: 20px;
	height: 25px;
	border-radius: 50%;
	font-size: 14px;
}

.col-lg-4, .col-lg-6, .col-lg-8, .col-lg-12 {
	margin-top: 10px;
}

.btn {
	border-radius: 0;
}

.row-image {
	width: 100px;
}

.form-field {
	width: 250px;
	display: inline-block;
	padding: 5px;
}

.cart-row {
	display: flex;
	align-items: flex-stretch;
	padding-bottom: 10px;
	margin-bottom: 10px;
	border-bottom: 1px solid #ececec;
}

.quantity {
	display: inline-block;
	font-weight: 700;
	padding-right: 10px;
}

.chg-quantity {
	width: 12px;
	cursor: pointer;
	display: block;
	margin-top: 5px;
	transition: .1s;
}

.chg-quantity:hover {
	opacity: .6;
}

.hidden {
	display: none !important;
}
</style>
<title>Insert title here</title>
</head>
<body>
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
          <a id="a" class="nav-link" href="">Hello ,<%=session.getAttribute("name")%></a>
        </li>
</nav>



	<div class="container">

		<div class="row">

			<div class="col-lg-4">
				<img class="thumbnail"
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQs4nKIrDYyYiVk_x1t3Z6bQhdHqCN4qQNUTo4dFJVTtmAMIuvmIx-aMq3tChcRWf5ZQsY&usqp=CAU">
				<div class="box-element product">
					<h6>
						<strong>samyak</strong>
					</h6>
					<hr>
                  <div class="ro">
					
					<a class="btn btn-outline-success" href="eventregister.jsp">Register</a>
					<h4 style="display: inline-block; float: right"></h4>
				</div>
				</div>
			</div>

			<div class="col-lg-4">
				<img class="thumbnail"
					src="data:image/jpeg;base64,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"
					height=175 class="card-img-top">
				<div class="box-element product">
					<h6>
						<strong>Surabhi</strong>
					</h6>
					<hr>
				<div class="ro">
					
					<a class="btn btn-outline-success" href="eventregister.jsp">Register</a>
					<h4 style="display: inline-block; float: right"></h4>
				</div>
				</div>
			</div>

			<div class="col-lg-4">
				<img class="thumbnail"
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFpG1KKtoKoyhjqI_WUev2VhzJQI0ZXvs4VA&usqp=CAU">
				<div class="box-element product">
					<h6>
						<strong>Trakshya</strong>
					</h6>
					<hr>

					<div class="ro">
					<a class="btn btn-outline-success" href="eventregister.jsp">Register</a>
					<h4 style="display: inline-block; float: right"></h4>
						</div>
				</div>
			</div>
		</div>
		<!-- 2nd row -->
		<div class="row">
			<div class="col-lg-4">
        <img class="thumbnail"
          src="data:image/jpeg;base64,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">
        <div class="box-element product">
          <h6>
            <strong>spark</strong>
          </h6>
          <hr>

        <div class="ro">
          <a class="btn btn-outline-success" href="eventregister.jsp">Register</a>
          <h4 style="display: inline-block; float: right"></h4>
        </div>
        </div>
      </div>

      <div class="col-lg-4">
        <img class="thumbnail"
          src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfq-lHrMaTkaBgIrcSdfKRaxrZVsT3iEObu1doBlgMehmvcF56t0bc3MN5hdxmWJniOsg&usqp=CAU"
          height=175 class="card-img-top">
        <div class="box-element product">
          <h6>
            <strong>#include</strong>
          </h6>
          <hr>
      <div class="ro">
          
          <a class="btn btn-outline-success" href="eventregister.jsp">Register</a>
          <h4 style="display: inline-block; float: right"></h4>
      </div>
        </div>
			</div>

			<div class="col-lg-4">
				<img class="thumbnail"
					src="https://www.kluniversity.in/pulse/img/speakers/1.jpg">
				<div class="box-element product">
					<h6>
						<strong>zrotriya</strong>
					</h6>
					<hr>

					<div class="ro">
					<a class="btn btn-outline-success" href="eventregister.jsp">Register</a>
					<h4 style="display: inline-block; float: right"></h4>
					</div>
				</div>
			</div>
		</div>
		
	</div>

</body>
</html>