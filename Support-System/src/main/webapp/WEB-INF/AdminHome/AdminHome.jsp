<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Administrator</title>
	
	<link href="/resources/css/bootstrap.min.css" rel="stylesheet">	
  	<script src="/resources/Javascript/jquery-3.2.1.min.js"></script>
  	<script src="/resources/Javascript/bootstrap.min.js"></script>
	
</head>
<body>
	
	<div class="container-fluid ">   
		<nav class="navbar navbar-default navbar-fixed-top" style="background-color: #CEF6EC;" id="nav">	 
	    	<div class="navbar-header">
	      		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>                        
				</button>
				<a class="navbar-brand active" href="#" style="font-family: fantasy;color: #0431B4;font-size: 24px;">Support System</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="/AdminHome" style="color: #088A85;font-weight: bold;font-size: 16px;"><span class="glyphicon glyphicon-home"></span> Home</a></li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#" style="color: #088A85;font-weight: bold;font-size: 16px;">BackOffice <span class="caret"></span></a>
					    <ul class="dropdown-menu">					    				    	
					        <li><a href="/AddDepartment">Department Master</a></li>
					        <li><a href="/AddRole">Role Master</a></li>
					        <li><a href="/ControlAccess">Control Access Master</a></li>
					        <li><a href="/AddUser">User Master</a></li>
					   	</ul>
			    	</li>					
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/Home" style="color: #088A85;font-weight: bold;padding-right: 35px;">Logout <span class="glyphicon glyphicon-log-out"></span></a></li>					
				</ul>
			</div>	 
		</nav>
		<br>
		<br>
		<br>
		<br>
		<div class="panel panel-primary">
			<div class="panel-body" align="center">  
		 		<div class="container-fluid " style="margin-top: ; margin-bottom: 55%;" >
				</div>
			</div>
		</div>
	</div>
</body>
</html>