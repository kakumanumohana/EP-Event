<%  if(session.getAttribute("name")==null){
response.sendRedirect("index.jsp");
}%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous" />
<style>
	* {
  box-sizing: border-box;
}

body {
  margin: 0;
  font-family: Arial;
  font-size: 17px;
}

#myVideo {
  position: fixed;
  right: 0;
  bottom: 0;
  min-width: 100%;
  min-height: 100%;
}

.content {
  position: fixed;
  top: 3;
  bottom: 0;
  background: rgba(0, 0, 0, 0.5);
  color: #f1f1f1;
  width: 100%;
  padding: 20px;
}
.content1 {
  position: fixed;
  top: 3;
  bottom: 0;
  background: rgba(0, 0, 0, 0.5);
  color: #FFEFD5 ;
  width: 100%;
  padding: 20px;
}
#myBtn {
  width: 200px;
  font-size: 18px;
  padding: 10px;
  border: none;
  background: #000;
  color: #fff;
  cursor: pointer;
}

#myBtn:hover {
  background: #ddd;
  color: black;
}

#hello-msg {
  font-size :50px;
  color: #f1f1f1;
  margin-right: 20px;

}

#a {
  font-size:15px;
  color:White;
}
	
	</style>
</head>
<body>
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
<video autoplay muted loop id="myVideo">
   <source src="https://media.istockphoto.com/id/942241080/video/footage-of-a-crowd-partying-dancing-slow-motion-at-a-concert.mp4?s=mp4-640x640-is&k=20&c=QgDU7JZrM9dcrXcC5kC8VzNf53PRJnqI6LvioJxvWvc=" type="video/mp4"/>
  Your browser does not support the video tag.
</video>
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
          <a id="a" class="nav-link" >Hello ,<%=session.getAttribute("name")%></a>
        </li>
</nav>
<div class="content">
  <p>The Event Management course is one of the top trending courses in India as it covers all happenings. An Event Management course is required for informal events like wedding functions, baby showers, birthday ceremonies, and proposal ceremonies.</p>
  <p>The organisation and hosting of small or large-scale events is known as Event Management. Undergraduate and graduate-level Event Management courses in this subject are available, and their durations range from one to three years. </p>
          <form action="logout"><input type="submit" value="Logout"  id="myBtn"></form >
</div>
</body>
</html>