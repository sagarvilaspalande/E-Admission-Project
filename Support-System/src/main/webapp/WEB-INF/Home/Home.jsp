<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Home Page</title>
	<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
	
	<style type="text/css">
		.container a > .glyphicon:hover {
			background-color: #FFFFFF;
			color: #A9A9F5;
			
			border-style: none;
		}
	</style>
</head>
<body>
	<br>
    <div class="container-fluid">
        <div class="panel panel-info">
            <div class="panel-heading" align="center">
                <h3><b><font color="black" style="font-family: sans-serif;"><span class="glyphicon glyphicon-home"></span></font> </b></h3>
            </div>
            <div class="panel-body" align="center">
                  
                <div class="container " style="margin-top: ; margin-bottom: 15%;">
                <br>
                	<form class="form-horizontal" role="form" name="homeForm">    
	                	<div class="form-group">						                    
							<div class="col-sm-3 col-sm-offset-1">					                    	
							    <a href="/Login" style="font-size: 50px;padding-left: 50px;color: maroon;">
								    <span class="glyphicon glyphicon-user"></span>
								</a><br>
				    			<label for="adminLogin" style="padding-left: 40px;"><font style="color: black;">Admin</font></label>
							</div>
							
							<div class="col-sm-3 ">					                    	
							    <a href="/Login" style="font-size: 50px;padding-left: 50px;color: maroon;">
								    <span class="glyphicon glyphicon-user"></span>
								</a><br>
				    			<label for="adminLogin" style="padding-left: 40px;"><font style="color: black;">Director</font></label>
							</div>
							
							<div class="col-sm-3 ">					                    	
							    <a href="/Login" style="font-size: 50px;padding-left: 50px;color: maroon;">
								    <span class="glyphicon glyphicon-user"></span>
								</a><br>
				    			<label for="adminLogin" style="padding-left: 40px;"><font style="color: black;">Manager</font></label>
							</div>						                    
						</div> <!-- /.form-group -->
						
						<div class="form-group">						                    
							<div class="col-sm-3 col-sm-offset-1">					                    	
							    <a href="/Login" style="font-size: 50px;padding-left: 50px;color: maroon;">
								    <span class="glyphicon glyphicon-user"></span>
								</a><br>
				    			<label for="adminLogin" style="padding-left: 30px;"><font style="color: black;">Project Manager</font></label>
							</div>
							
							<div class="col-sm-3 ">					                    	
							    <a href="/Login" style="font-size: 50px;padding-left: 50px;color: maroon;">
								    <span class="glyphicon glyphicon-user"></span>
								</a><br>
				    			<label for="adminLogin" style="padding-left: 30px;"><font style="color: black;">Team Leader</font></label>
							</div>
							
							<div class="col-sm-3 ">					                    	
							    <a href="/Login" style="font-size: 50px;padding-left: 50px;color: maroon;">
								    <span class="glyphicon glyphicon-user"></span>
								</a><br>
				    			<label for="adminLogin" style="padding-left: 35px;"><font style="color: black;">Software Developer</font></label>
							</div>						                    
						</div> <!-- /.form-group -->
						
						<div class="form-group">
							<div class="col-sm-3 col-sm-offset-1"></div>						                    
							<div class="col-sm-3">					                    	
							    <a href="/Login" style="font-size: 50px;padding-left: 50px;color: maroon;">
								    <span class="glyphicon glyphicon-user"></span>
								</a><br>
				    			<label for="adminLogin" style="padding-left: 40px;"><font style="color: black;">Trainee</font></label>
							</div>
							
											                    
						</div> <!-- /.form-group -->
		                  
	                </form>	
	            </div>                
            </div>
            <div class="panel-footer" align="center"><font style="color: #111"></font></div>
        </div>
    </div>
    
</body>
</html>