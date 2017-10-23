<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html ng-app="UserApp">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Add User</title>
	<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
	<script type="text/javascript" src="/resources/Javascript/angular.min.js"></script>
	<script type="text/javascript" src="/resources/Javascript/bootstrap.min.js"></script>
	
	<script type="text/javascript" src="/resources/Javascript/UserApp.js"></script>
</head>
<body ng-controller="UserCntrl">
	<br>
    <div class="container-fluid">
    	<div class="panel panel-info">
            <div class="panel-heading form-group" align="center">
                <h3><b><font color="black" style="font-family: sans-serif;">Add User</font> </b></h3>
            </div>
            
            <div class="panel-body"align="center">   
            <label>{{message}}</label> 
            <br>              
                <div class="container " style="margin-top: ; margin-bottom: 12%;">
                	<form class="form-horizontal" role="form" name="userForm">    
	                	<input type = "hidden" id = "user_id" name = "user_id" ng-model="data.user_id">
	                	<input type = "hidden" id = "br_code" name = "br_code" ng-model="data.br_code">
	                	<input type = "hidden" id = "status" name = "status" ng-model="data.status">
	                	<input type = "hidden" id = "created_by" name = "created_by" ng-model="data.created_by">
	                	<input type = "hidden" id = "created_date" name = "created_date" ng-model="data.created_date">
	                	<input type = "hidden" id = "deleted_by" name = "deleted_by" ng-model="data.deleted_by">
	                	<input type = "hidden" id = "deleted_date" name = "deleted_date" ng-model="data.deleted_date">
	                	<input type = "hidden" id = "updated_by" name = "updated_by" ng-model="data.updated_by">
	                	<input type = "hidden" id = "updated_date" name = "updated_date" ng-model="data.updated_date">
                	
	                    <div class="panel panel-info" style="max-width: 70%;" align="left">                      
	                        <div class="panel-heading form-group">
	                            <b><font color="black">New User <span class="glyphicon glyphicon-user"></span></font> </b>
	                        </div>            
	                        <div class="panel-body" >	                        	
					                <div class="form-group">
					                    <label for="user_name" class="col-sm-3 control-label">User Name</label>
					                    <div class="col-sm-9">					                    	
					                        <input type="text" id="user_name" ng-model="data.user_name" placeholder="User Name" name = "user_name" class="form-control" autofocus required>
					                    </div>
					                </div> <!-- /.form-group -->
					                
					                <div class="form-group">
				                    <label for="user_email" class="col-sm-3 control-label">Email Id</label>
				                    <div class="col-sm-9">
				                        <input type="email" id="user_email" ng-model="data.user_email" name = "user_email" placeholder="Email Id" class="form-control" required>
				                    </div>
				                </div> <!-- /.form-group -->
				                
				                <div class="form-group">
				                    <label for="password" class="col-sm-3 control-label">Password</label>
				                    <div class="col-sm-9">
				                        <input type="password" id="password" ng-model="data.password" name = "password" placeholder="Password" class="form-control" required>
				                    </div>
				                </div> <!-- /.form-group -->
				                
				                <div class="form-group">
				                    <label for="user_designation" class="col-sm-3 control-label">Designation</label>
				                    <div class="col-sm-9">
				                        <input type="text" id="user_designation" ng-model="data.user_designation" name = "user_designation" placeholder="Designation" class="form-control" required>
				                    </div>
				                </div> <!-- /.form-group -->
				                
				                <div class="form-group">
				                    <label for="user_contact" class="col-sm-3 control-label">Contact Number</label>
				                    <div class="col-sm-9">
				                        <input type="text" id="user_contact" ng-model="data.user_contact" name = "user_contact" placeholder="9999999999" class="form-control" minlength="10" maxlength="10" required>
				                    </div>
				                </div> <!-- /.form-group -->
				                
				                <div class="form-group">
				                    <label for="role" class="col-sm-3 control-label">Role</label>
				                    <div class="col-sm-9">
				                        <select id="role" ng-model="data.role" name = "role" class="form-control">
				                            <option>aa</option>
				                            <option>bb</option>
				                            <option>cc</option>
				                            <option>dd</option>
				                        </select>
				                    </div>
				                </div> <!-- /.form-group -->
				                 
				                <div class="form-group">
				                    <label for="department" class="col-sm-3 control-label">Department</label>
				                    <div class="col-sm-9">
				                        <select id="department" ng-model="data.department" name = "department" class="form-control">
				                            <option>aa</option>
				                            <option>bb</option>
				                            <option>cc</option>
				                            <option>dd</option>				                            
				                        </select>
				                    </div>
				                </div> <!-- /.form-group -->                
				               				                
				                <div class="form-group">
					                <div class="col-sm-9 col-sm-offset-3">
					                    <button ng-click="addDepartment();" class="btn btn-primary " ng-show="buttonControl">Add User</button>
					                    <button ng-click="updateDepartment();" class="btn btn-primary " ng-hide="buttonControl">Update User</button>
					                </div>
					            </div> <!-- /.form-group -->
					           
	                        </div>
	                    </div>
	                    
	                    <div class="panel panel-info" style="max-width: 70%;" align="left">           
	                        <div class="panel-body" >	                        	
					            <table class="table table-bordered">
					                	<thead>
					                		<tr>
					                			<th class="col-sm-2 text-center">Sr.No.</th>
					                			<th class="col-sm-2 text-center">User Name</th>
					                			<th class="col-sm-2 text-center">Email Id</th>
					                			<th class="col-sm-1 text-center">Designation</th>
					                			<th class="col-sm-1 text-center">Contact Number</th>
					                			<th class="col-sm-1 text-center">Role</th>
					                			<th class="col-sm-1 text-center">Department</th>
					                			<th class="col-sm-2 text-center">Option</th>
					                		</tr>
					                	</thead>
					                	<tbody>
					                		<tr ng-repeat="user in userList">
					                			<td class="text-center">{{$index + 1}}</td>
					                			<td>{{user.user_name}}</td>
					                			<td>{{user.user_email}}</td>
					                			<td>{{user.user_designation}}</td>
					                			<td>{{user.user_contact}}</td>
					                			<td>{{user.role}}</td>
					                			<td>{{user.department}}</td>
					                			<td class="text-center">
					                				<a href="#" ng-click="editUser(user);">
					                					<span style="color: blue;" class="glyphicon glyphicon-pencil"></span>
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
                    </form> <!-- /form --> 
                </div>
            </div>
        </div> 
    </div> <!-- ./container --> 
</body>
</html>