<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>User Home Page</title>
	
	<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="/resources/css/ui-bootstrap-csp.css" rel="stylesheet">
	<script type="text/javascript" src="/resources/Javascript/jquery.min.js"></script>
	<script type="text/javascript" src="/resources/Javascript/bootstrap.min.js"></script>
	<script type="text/javascript" src="/resources/Javascript/angular.min.js"></script>
	<script type="text/javascript" src="/resources/Javascript/CollapseNavbar.js"></script>	
	
</head>
<body ng-app="CollapseNavbarApp">
	<div ng-controller="CollapseNavbarCtrl">
		<br>
    	<div class="container-fluid">
    		<div class="panel panel-info">
    			 <div class="panel-body"align="center" style="margin-bottom: 22%;">
		       		<nav class="navbar navbar-info" role="navigation">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar" ng-click="isNavCollapsed = !isNavCollapsed">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="/Home"><span class="glyphicon glyphicon-home"></span></a>
						</div>
						<div class="collapse navbar-collapse" uib-collapse="isNavCollapsed">
						<ul class="nav navbar-nav">
							
						    <li><a href="#">WorkSheet</a></li>
						    <li><a href="#">New Work</a></li>
						    <li><a href="#">Project Management</a></li>
						    <li><a href="#">Feedback</a></li>
						    <li><a href="#">Complaints</a></li>				
						</ul>
					</div>
				</nav>
		    </div>
	    	</div>
        </div>    	
    </div>   
</body>
</html>