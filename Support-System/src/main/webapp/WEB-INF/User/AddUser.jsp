<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html ng-app="UserApp">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>User Master</title>
	<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
	<script type="text/javascript" src="/resources/Javascript/angular.min.js"></script>
	<script type="text/javascript" src="/resources/Javascript/jquery.min.js"></script>
	<script type="text/javascript" src="/resources/Javascript/bootstrap.min.js"></script>
	<script src="/resources/Javascript/jquery-3.2.1.min.js"></script>
	
	<script type="text/javascript" src="/resources/Javascript/UserApp.js"></script>
</head>
<body ng-controller="UserCntrl">	
    <div class="container-fluid">
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
            <h3 align="center"><b><font color="black" style="font-family: sans-serif;">User Master</font> </b></h3>           
            <div class="panel-body" align="center">   
            <label style="color: #B40486;">{{message}}</label>                        
                <div class="container " style="margin-top: ; margin-bottom: ;">
                	<form class="form-horizontal" role="form" name="userForm">    
	                	<input type = "hidden" id = "userid" name = "userid" ng-model="data.userid">
	                	<input type = "hidden" id = "brCode" name = "brCode" ng-model="data.brCode">
	                	<input type = "hidden" id = "status" name = "status" ng-model="data.status">
	                	<input type = "hidden" id = "createdBy" name = "createdBy" ng-model="data.createdBy">
	                	<input type = "hidden" id = "createdDate" name = "createdDate" ng-model="data.createdDate">
	                	<input type = "hidden" id = "deletedBy" name = "deletedBy" ng-model="data.deletedBy">
	                	<input type = "hidden" id = "deletedDate" name = "deletedDate" ng-model="data.deletedDate">
	                	<input type = "hidden" id = "updatedBy" name = "updatedBy" ng-model="data.updatedBy">
	                	<input type = "hidden" id = "updatedDate" name = "updatedDate" ng-model="data.updatedDate">
                	
	                    <div class="panel panel-info" style="max-width: 60%;" >                      
	                        <div class="panel-heading " style="max-width: 100%;" align="left">
	                            <b><font color="black">User <span class="glyphicon glyphicon-user"></span></font> </b>
	                        </div>            
	                        <div class="panel-body">	                        	
					            <div class="form-group">
					                <label for="userName" class="col-sm-4 control-label">User Name</label>
					                <div class="col-sm-8">					                    	
					                    <input type="text" id="userName" ng-model="data.userName" placeholder="User Name" name = "userName" class="form-control" autofocus required>
					                </div>
					            </div> <!-- /.form-group -->
					                
					            <div class="form-group">
				                    <label for="userEmail" class="col-sm-4 control-label">Email Id</label>
				                    <div class="col-sm-8">
				                        <input type="email" id="userEmail" ng-model="data.userEmail" name = "userEmail" placeholder="Email Id" class="form-control" required>
				                    </div>
				                </div> <!-- /.form-group -->
				                
				                <div class="form-group">
				                    <label for="password" class="col-sm-4 control-label">Password</label>
				                    <div class="col-sm-8">
				                        <input type="password" id="password" ng-model="data.password" name = "password" placeholder="Password" class="form-control" required>
				                    </div>
				                </div> <!-- /.form-group -->
				                
				                <!-- <div class="form-group">
				                    <label for="userDesignation" class="col-sm-3 control-label">Designation</label>
				                    <div class="col-sm-9">
				                        <input type="text" id="userDesignation" ng-model="data.userDesignation" name = "userDesignation" placeholder="Designation" class="form-control" required>
				                    </div>
				                </div> --> <!-- /.form-group -->
				                
				                <div class="form-group">
				                    <label for="userContact" class="col-sm-4 control-label">Contact Number</label>
				                    <div class="col-sm-8">
				                        <input type="text" id="userContact" ng-model="data.userContact" name = "userContact" placeholder="9999999999" class="form-control" minlength="10" maxlength="10" required>
				                    </div>
				                </div> <!-- /.form-group -->
				                
				                <div class="form-group">
				                    <label for="departmentid" class="col-sm-4 control-label">Select Department</label>
				                    <div class="col-sm-8">
				                        <select id="departmentid" ng-model="data.departmentid" name = "departmentid" class="form-control">
				                            <option ng-repeat="list in departmentList" ng-selected="data.departmentid == list.departmentid" value = "{{list.departmentid}}">{{list.departmentName}}</option>	                            
				                        </select>
				                    </div>
				                </div> <!-- /.form-group -->                
				               	
				                <div class="form-group">
				                    <label for="roleid" class="col-sm-4 control-label">Select Role</label>
				                    <div class="col-sm-8">
				                        <select id="roleid" ng-model="data.roleid" name = "roleid" class="form-control">
				                            <option ng-repeat="role in roleList" ng-selected="data.roleid == role.roleid" value = "{{role.roleid}}">{{role.roleName}}</option>	
				                        </select>
				                    </div>
				                </div> <!-- /.form-group -->
				                 			                
				                <div class="form-group">
					                <div class="col-sm-8 col-sm-offset-4" align="left">
					                    <button ng-click="addUser();" class="btn btn-primary " ng-show="buttonControl">Add User</button>
					                    <button ng-click="updateUser();" class="btn btn-primary " ng-hide="buttonControl">Update User</button>
					                    <!-- <a class="btn btn-primary " href="/AdminHome"><span class="glyphicon glyphicon-backward"></span> Back</a> -->					                    
					                </div>
					            </div> <!-- /.form-group -->					           
	                        </div>
	                    </div>	                    
	                    <div class="panel panel-info" style="max-width: 90%;" align="center">           
	                        <div class="panel-body" >
	                        	<div class="table-responsive">                        	
						            <table class="table table-bordered">
						                	<thead>
						                		<tr>
						                			<th class="col-sm-2 text-center">Sr.No.</th>
						                			<th class="col-sm-2 text-center">User Name</th>
						                			<th class="col-sm-2 text-center">Email Id</th>
						                			<!-- <th class="col-sm-1 text-center">Designation</th> -->
						                			<th class="col-sm-1 text-center">Contact Number</th>
						                			<th class="col-sm-1 text-center">Department</th>
						                			<th class="col-sm-2 text-center">Role</th>				                			
						                			<th class="col-sm-2 text-center">Option</th>
						                		</tr>
						                	</thead>
						                	<tbody>
						                		<tr ng-repeat="user in userList">
						                			<td class="text-center">{{$index + 1}}</td>
						                			<td>{{user.userName}}</td>
						                			<td>{{user.userEmail}}</td>
						                			<!-- <td>{{user.userDesignation}}</td> -->
						                			<td>{{user.userContact}}</td>
						                			<td>{{user.department.departmentName}}</td>
						                			<td>{{user.role.roleName}}</td>
						                			<td class="text-center">
						                				<a href="#" ng-click="editUser(user);">
						                					<span style="color: blue;" class="glyphicon glyphicon-edit"></span>
						                				</a> |
						                				<a href="#" ng-click="deleteUser(user);">
						                					<span style="color: red;" class="glyphicon glyphicon-remove"></span>
						                				</a>
						                			</td>
						                		</tr>
						                </tbody>
						        	</table>
					        	</div>						           
	                        </div>
	                    </div>
                    </form> <!-- /form --> 
                </div>
            </div>
        </div> 
    </div> <!-- ./container --> 
</body>
</html>