<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html ng-app="HomeApp">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Home Page</title>
	<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
	<script type="text/javascript" src="/resources/Javascript/angular.min.js"></script>
	<script type="text/javascript" src="/resources/Javascript/jquery.min.js"></script>
	<script type="text/javascript" src="/resources/Javascript/bootstrap.min.js"></script>
	<script src="/resources/Javascript/jquery-3.2.1.min.js"></script>
	
	<script type="text/javascript" src="/resources/Javascript/HomeApp.js"></script>
	
	<style type="text/css">
		.container-fluid button > .glyphicon:hover {
			background-color: #E6E6E6;
			color: #A9A9F5;			
			border-style: none;
		}		
	</style>
</head>
<body ng-controller="HomeCntrl">	
	<div class="container-fluid ">   
		<nav class="navbar navbar-default navbar-fixed-top" style="background-color: #E0E6F8;">	 
	    	<div class="navbar-header">
	      		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>                        
				</button>
				<a class="navbar-brand" style="font-family: fantasy;color: #0431B4;font-size: 24px;">Support System</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav active">
					<li class="active"><a href="/Home" style="color: #088A85;font-weight: bold;font-size: 16px;"><span class="glyphicon glyphicon-home"></span> Home</a></li>					
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/Login" style="color: #088A85;font-weight: bold;padding-right: 35px;font-size: 16px;"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>					
				</ul>				
			</div>	 
		</nav>
		<br>
		<br>
		<br>
		<br>
		<!-- <div class="panel panel-primary">
			<div class="panel-body" align="center">  
		 		<div class="container-fluid " style="margin-top: ; margin-bottom: 7%;" >
		 			 <form method = "POST" class="form-horizontal" role="form" name="homeForm" ng-submit="setValues();" action = "/Authenticate">
                		<input type="hidden" value="{{valueOfSelected}}" name = "selectedType" id = "selectedType" ng-model="selectedType">
                	    <br>    
	                	<div class="form-group">						                    
							<div class="col-sm-2 col-sm-offset-3">
								<button ng-click="selectRole(1);" class="btn btn-default btn-sm" style="font-size: 50px;color: maroon;text-align: center;text-decoration: none;">
						          <span class="glyphicon glyphicon-user"></span>
						        </button>					                    	
							    <br>
				    			<label for="adminLogin" style="text-align: center;"><font style="color: black;">Admin</font></label>
							</div>
							
							<div class="col-sm-2 ">					                    	
							    <button ng-click="selectRole(2);" class="btn btn-default btn-sm" style="font-size: 50px;color: maroon;text-align: center;text-decoration: none;">
						          <span class="glyphicon glyphicon-user"></span>
						        </button><br>
				    			<label for="directorLogin" style="text-align: center;"><font style="color: black;">Director</font></label>
							</div>
							
							<div class="col-sm-2 ">					                    	
							   <button ng-click="selectRole(3);" class="btn btn-default btn-sm" style="font-size: 50px;color: maroon;text-align: center;text-decoration: none;">
						          <span class="glyphicon glyphicon-user"></span>
						        </button><br>
				    			<label for="managerLogin" style="text-align: center;"><font style="color: black;">Manager</font></label>
							</div>						                    
						</div> /.form-group
						   <br>
						<div class="form-group">						                    
							<div class="col-sm-2 col-sm-offset-3">					                    	
							    <button ng-click="selectRole(4);" class="btn btn-default btn-sm" style="font-size: 50px;color: maroon;text-align: center;text-decoration: none;">
						          <span class="glyphicon glyphicon-user"></span>
						        </button><br>
				    			<label for="projectManagerLogin" style="text-align: center;"><font style="color: black;">Project Manager</font></label>
							</div>
							
							<div class="col-sm-2 ">					                    	
							    <button ng-click="selectRole(5);" class="btn btn-default btn-sm" style="font-size: 50px;color: maroon;text-align: center;text-decoration: none;">
						          <span class="glyphicon glyphicon-user"></span>
						        </button><br>
				    			<label for="teamLeaderLogin" style="text-align: center;"><font style="color: black;">Team Leader</font></label>
							</div>
							
							<div class="col-sm-2 ">					                    	
							    <button ng-click="selectRole(6);" class="btn btn-default btn-sm" style="font-size: 50px;color: maroon;text-align: center;text-decoration: none;">
						          <span class="glyphicon glyphicon-user"></span>
						        </button><br>
				    			<label for="softwareDeveloperLogin" style="text-align: center;"><font style="color: black;">Software Developer</font></label>
							</div>						                    
						</div> /.form-group
						   <br>
						<div class="form-group">
							<div class="col-sm-2 col-sm-offset-3"></div>						                    
							<div class="col-sm-2">					                    	
							    <button ng-click="selectRole(7);" class="btn btn-default btn-sm" style="font-size: 50px;color: maroon;text-align: center;text-decoration: none;">
						          <span class="glyphicon glyphicon-user"></span>
						        </button><br>
				    			<label for="traineeLogin" style="text-align: center;"><font style="color: black;">Trainee</font></label>
							</div>										                    
						</div> /.form-group		                  
	                </form>
				</div>
			</div>
		</div> -->
	</div>    
</body>
</html>