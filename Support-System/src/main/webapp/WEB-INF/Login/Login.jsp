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
	<script type="text/javascript" src="/resources/Javascript/bootstrap.min.js"></script>
	<script type="text/javascript" src="/resources/Javascript/HomeApp.js"></script>
</head>
<body ng-controller="HomeCntrl">
	<br>
    <div class="container-fluid">
        <div class="panel panel-info">
            <div class="panel-heading" align="center">
                <h3><b><font color="black" style="font-family: sans-serif;">Login Form</font> </b></h3>
            </div>
            <div class="panel-body"align="center">
            <br>                  
                <div class="container " style="margin-top: ; margin-bottom: 9%;">          
    				
	                    <div class="panel panel-info" style="max-width: 50%;" align="left">	                        
	                        <div class="panel-heading form-group" >
	                            <b><font color="black">
	                                Login  <span class="glyphicon glyphicon-log-in"></span></font> </b>
	                        </div>	                    
	                        <div class="panel-body" >
								<form class="form-horizontal" role="form" name="userForm" method="POST" action="/ValidateUser">
								<input type="hidden" value = "${roleid}" name="roleid" id = "roleid" ng-model="data.roleid">
	                            <div class="form-group">
	                                <label for="role" class="col-sm-3 control-label">User Level</label>
	                                <div class="col-sm-9">
	                                	 <input type="text" class="form-control" name="role" id="role" value  = "${role}" required readonly>
	                                </div>                                    
	                            </div> <!-- /.form-group -->
	                            
	                            <div class="form-group">
	                                <label for="userId" class="col-sm-3 control-label">User Id</label>
	                                <div class="col-sm-9">
	                                	 <input type="text" class="form-control" focus-me="useridfocus" ng-model="data.userid" name="userid" id="userid" ng-change="getUserDetails();"
	                                    placeholder="Enter User Id" required>
	                                </div>                                    
	                            </div> <!-- /.form-group -->
	                            
	                            <div class="form-group">
	                                <label for="userName" class="col-sm-3 control-label">User Name</label>
	                                <div class="col-sm-9">
	                                	 <input type="text" class="form-control" ng-model="data.userName" name="userName" id="userName"
	                                     value="" required readonly>
	                                </div>                                    
	                            </div> <!-- /.form-group -->
	                            
	                            <div class="form-group">
	                                <label for="password" class="col-sm-3 control-label">Password</label>
	                                <div class="col-sm-9">
	                                	 <input type="password" class="form-control" ng-model="data.password" focus-me="passwordfocus" name="password" id="password"
	                                    placeholder="Enter Password" required>
	                                </div>                                    
	                            </div> <!-- /.form-group -->
	                            
	                            <div class="form-group">
	                                <div class="col-sm-9 col-sm-offset-3">
	                                	 <button type="submit" class="btn btn-primary" ><b>Login</b></button>
	                                	 <a class="btn btn-primary" href="/Home"><b><span class="glyphicon glyphicon-backward"></span>  Back</b></a>
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