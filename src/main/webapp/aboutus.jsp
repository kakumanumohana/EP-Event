<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous" />
<style>
    body {
        background-image: url("https://i.pinimg.com/originals/d6/10/61/d6106180dfa5720c098722f1c6ecbbee.jpg");
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
        font-family: Arial, Helvetica, sans-serif;
        margin: 0;
    }
    
    .about-section {
        padding: 20px;
        text-align: center;
        background-color: rgba(255, 204, 229, 0.8);
    }
    
    p {
        color: black;
        padding: 10px;
        text-align: center;
    }
    
    .row {
        display: flex;
        justify-content: center;
    }
    
    .column {
        flex-basis: 33.33%;
        padding: 10px;
    }
    
    .card {
        background-color: rgba(102, 178, 255, 0.8);
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
        padding: 16px;
        text-align: center;
    }
    .custom-navbar {
    background-color: #66B2FF; /* Replace #FFA500 with your desired color code */
  }
    
    /* Rest of your CSS code */
    #a {
  font-size:15px;
  color:White;
}

#navbar {
    background-color: lightblue;
}
</style>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

<nav class="navbar navbar-expand-lg navbar navbar-dark" >
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
<div class="about-section">
    <h2>Our events unforgettable moments that leave a lasting impression, one event at a time.</h2>
</div>
<p id="bj"> K L University is situated in a spacious 100-acre campus on the banks of Buckingham Canal of river Krishna, eight kilometers from Vijayawada city.
    Built within a rural setting of lush green fields, the institute is a virtual paradise of pristine nature and idyllic beauty. This Visionary group is 
    committed to develop KLU as a paradigm within a couple of years. The future of KLU in Engineering Education is bright as the above professors are heading 
    the departments and extend their service to develop the institution with the support of highly qualified and dedicated teaching and non-teaching staff.</p>


<div class="row">
    <div class="column">
        <div class="card">
            <img src="https://www.crazyengineers.com/storage/threads/e5ccec4a-40e3-448d-8003-f469eb197bf2.webp" alt="Card 1 Image" style="width:100%"/>
        </div>
        <p></p>
    <p></p>
    <p></p>
    <p></p>
    </div>
    
    <div class="column">
        <div class="card">
            <img src="https://static.toiimg.com/photo/msid-89350147/89350147.jpg" alt="Card 2 Image" style="width:100%"/>
        </div>
    </div>
    <div class="column">
        <div class="card">
            <img src="https://hire4event.com/blogs/wp-content/uploads/2019/02/COLLEGE-EVENT.jpg" alt="Card 3 Image" style="width:100%"/>
        </div>
    </div>
</div>
</body>
</html>