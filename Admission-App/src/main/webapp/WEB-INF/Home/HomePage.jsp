<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Spring Security Example</title>
<link href="/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <script src="/resources/Javascript/jquery-2.2.1.min.js"></script>
    <script src="/resources/Javascript/bootstrap.min.js"></script>
    <link href="/resources/css/style_home.css" rel="stylesheet" type="text/css"/>
    
    
</head>
<body>
	<nav class="navbar navbar-default navbar-doublerow navbar-trans navbar-fixed-top">
  <!-- top nav -->
  <nav class="navbar navbar-top hidden-xs">
    <div class="container">
      <!-- left nav top -->
      <ul class="nav navbar-nav pull-left">
        <li><a href="#"><span class="glyphicon glyphicon-thumbs-up text-white"></span></a></li>
        <li><a href="#"><span class="glyphicon glyphicon-globe text-white"></span></a></li>
        <li><a href="#"><span class="glyphicon glyphicon-pushpin text-white"></span></a></li>
        <li><a href="#"><span class="text-white">QUESTIONS? CALL: <b>+9763898373</b></span></a></li>
      </ul>
      <!-- right nav top -->
      <ul class="nav navbar-nav pull-right">
        <li><a href="#" class="text-white">About Us</a></li>
        <li><a href="#" class="text-white">Contact Us</a></li> 
      </ul>
    </div>
    <div class="dividline light-grey"></div>
  </nav>
  <!-- down nav -->
  <nav class="navbar navbar-down">
    <div class="container">
      <div class="flex-container">  
        <div class="navbar-header flex-item">
          <div class="navbar-brand" href="#">MAHASOFT</div>
        </div>
        <ul class="nav navbar-nav flex-item hidden-xs">
          <li><a href="#">Admin</a></li>
          <li><a href="#">User</a></li> 
          <li><a href="/Login">Student</a></li> 
        </ul>
        <ul class="nav navbar-nav flex-item hidden-xs pull-right">
          <li><a href="/Login#toregister" class="">Register</a></li> 
        </ul>
        <!-- dropdown only moblie -->
          <div class="dropdown visible-xs pull-right">
            <button class="btn btn-default dropdown-toggle " type="button" id="dropdownmenu" data-toggle="dropdown">
              <span class="glyphicon glyphicon-align-justify"></span> 
            </button>
            <ul class="dropdown-menu">
              <li><a href="#">Projects</a></li>
              <li><a href="#">Pricing</a></li> 
              <li><a href="#">TheTeam</a></li> 
              <li role="separator" class="divider"></li>
              <li><a href="#">contact us</a></li>
            </ul>
          </div>
        </div>  
      </div>
    </nav>
  </nav> 
<!--bg img  -->
<header>
    <img src="https://d2lm6fxwu08ot6.cloudfront.net/img-thumbs/960w/J70T3LHQ2O.jpg" style="width:100%">
</header>    
</body>
</html>
