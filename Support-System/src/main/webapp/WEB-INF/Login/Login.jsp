<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html ng-app="HomeApp">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Login Page</title>
	<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
	<script type="text/javascript" src="/resources/Javascript/angular.min.js"></script>
	<script type="text/javascript" src="/resources/Javascript/jquery.min.js"></script>
	<script type="text/javascript" src="/resources/Javascript/bootstrap.min.js"></script>
	<script src="/resources/Javascript/jquery-3.2.1.min.js"></script>
	
	<script type="text/javascript" src="/resources/Javascript/HomeApp.js"></script>
</head>
<body ng-controller="HomeCntrl">
    <div class="container-fluid">
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
					<li><a href="/Home" style="color: #088A85;font-weight: bold;font-size: 16px;"><span class="glyphicon glyphicon-home"></span> Home</a></li>					
				</ul>				
			</div>	 
		</nav>
		<br>
		<br>
		<br>
		<br>    
        <div class="panel panel-primary">           
            <h3 align="center"><b><font color="black" style="font-family: sans-serif;">Login</font> </b></h3>           
            <div class="panel-body"align="center">                          
                <div class="container " style="margin-top: ; margin-bottom: 5%;">   				
	                 <div class="panel panel-info" style="max-width: 50%;" align="left">	                        
	                 	<div class="panel-heading form-group" >
	                    	<b><font color="black">
	                        	Login  <span class="glyphicon glyphicon-log-in"></span></font> 
	                        </b>
	                    </div>	                    
	                    <div class="panel-body" >
							<form class="form-horizontal" role="form" name="userForm" method="POST" action="/ValidateUser">
								<div class="form-group">
	                                <label for="useremail" class="col-sm-3 control-label">Email-Id</label>
	                                <div class="col-sm-8">
	                                	 <input type="text" class="form-control" focus-me="useridfocus" ng-model="data.useremail" name="useremail" id="useremail"
	                                    placeholder="Enter Email-Id" required>
	                                </div>                                    
	                            </div>  <!-- /.form-group -->
	                            
	                            <div class="form-group">
	                                <label for="password" class="col-sm-3 control-label">Password</label>
	                                <div class="col-sm-8">
	                                	 <input type="password" class="form-control" ng-model="data.password" focus-me="passwordfocus" name="password" id="password"
	                                    placeholder="Enter Password" required>
	                                </div>                                    
	                            </div> <!-- /.form-group -->
	                            
							
								<%-- <input type="hidden" value = "${roleid}" name="roleid" id = "roleid" ng-model="data.roleid">
	                            <div class="form-group">
	                                <label for="role" class="col-sm-3 control-label">User Level</label>
	                                <div class="col-sm-8">
	                                	 <input type="text" class="form-control" name="role" id="role" value  = "${role}" required readonly>
	                                </div>                                    
	                            </div>  --%><!-- /.form-group -->
	                            
	                            <!-- <div class="form-group">
	                                <label for="userId" class="col-sm-3 control-label">User Id</label>
	                                <div class="col-sm-8">
	                                	 <input type="text" class="form-control" focus-me="useridfocus" ng-model="data.userid" name="userid" id="userid" ng-change="getUserDetails();"
	                                    placeholder="Enter User Id" required>
	                                </div>                                    
	                            </div>  --><!-- /.form-group -->	                             
	                            
	                            <!-- <div class="form-group">
	                                <label for="userName" class="col-sm-3 control-label">User Name</label>
	                                <div class="col-sm-8">
	                                	 <input type="text" class="form-control" ng-model="data.userName" name="userName" id="userName"
	                                     value="" required readonly>
	                                </div>                                    
	                            </div>  --><!-- /.form-group -->
	                            
	                            
	                            
	                            <div class="form-group">
	                                <div class="col-sm-8 col-sm-offset-3">
	                                	 <button type="submit" class="btn btn-primary btn-block" ><b>Login</b></button>
	                                	 <!-- <a class="btn btn-primary" href="/Home"><b><span class="glyphicon glyphicon-backward"></span>  Back</b></a> -->
	                                </div>                                    
	                            </div> <!-- /.form-group -->
	                         </form>	                           
	                   	</div>
	                 </div>
	                 <br>
	                 <label style="color: red;" ng-bind="errormessage"></label>
	                 <br>
	                 <label style="color: red;">${message}</label>
                </div>                
            </div>
           <!--  <div class="panel-footer" align="center"><font style="color: #111"></font></div> -->
        </div>
    </div>    
</body>
</html>