<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Login Page</title>
	<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<br>
    <div class="container-fluid">
        <div class="panel panel-info">
            <div class="panel-heading" align="center">
                <h3><b><font color="black" style="font-family: sans-serif;">Login Form</font> </b></h3>
            </div>
            <div class="panel-body"align="center">
                  
                <div class="container " style="margin-top: 10%; margin-bottom: 10%;">
    
                    <div class="panel panel-info" style="max-width: 35%;" align="left">
                        
                        <div class="panel-heading form-group">
                            <b><font color="black">
                                Login  <span class="glyphicon glyphicon-log-in"></span></font> </b>
                        </div>
                    
                        <div class="panel-body" >

                        <form action="" method="post" >
                            <div class="form-group">
                                <label for="exampleInputEmail1" class="col-sm-3 control-label">Email-Id</label>
                                <div class="col-sm-9">
                                	 <input type="text" class="form-control" name="txtUserName" id="txtUserName"
                                    placeholder="Enter Email-Id" required="required">
                                </div>                                    
                            </div> <!-- /.form-group -->
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password</label> <input
                                    type="password" class="form-control" name="txtPass" id="txtPass"
                                    placeholder="Password" required="required">
                            </div> <!-- /.form-group -->
                           
                            <button type="submit" style="width: 100%; font-size:1.1em;" class="btn btn-sm btn btn-info btn-lg btn-block" ><b>Login</b></button>
                                                   
                        </form>

                        </div>
                    </div>
                    
                </div>
                
            </div>
            <div class="panel-footer" align="center"><font style="color: #111"></font></div>
        </div>
    </div>
    
</body>
</html>