<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html ng-app="RoleApp">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Add Role</title>
	<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
	<script type="text/javascript" src="/resources/Javascript/angular.min.js"></script>
	<script type="text/javascript" src="/resources/Javascript/bootstrap.min.js"></script>
	
	<script type="text/javascript" src="/resources/Javascript/RoleApp.js"></script>
</head>
<body ng-controller="RoleController">
	<br>
    <div class="container-fluid">
    	<div class="panel panel-info">
            <div class="panel-heading form-group" align="center">
                <h3><b><font color="black" style="font-family: sans-serif;">Add Role</font> </b></h3>
            </div>
            <div class="panel-body"align="center">
            	 <label>{{message}}</label> 
            	<br>                    
                <div class="container " style="margin-top: ; margin-bottom: 12%;">
                	 <form class="form-horizontal" role="form" name="roleForm">
                        		<input type = "hidden" id = "role_id" name = "role_id" ng-model="data.role_id">
                        		<input type = "hidden" id = "br_code" name = "br_code" ng-model="data.br_code">
			                	<input type = "hidden" id = "status" name = "status" ng-model="data.status">
			                	<input type = "hidden" id = "created_by" name = "created_by" ng-model="data.created_by">
			                	<input type = "hidden" id = "created_date" name = "created_date" ng-model="data.created_date">
			                	<input type = "hidden" id = "deleted_by" name = "deleted_by" ng-model="data.deleted_by">
			                	<input type = "hidden" id = "deleted_date" name = "deleted_date" ng-model="data.deleted_date">
			                	<input type = "hidden" id = "updated_by" name = "updated_by" ng-model="data.updated_by">
			                	<input type = "hidden" id = "updated_date" name = "updated_date" ng-model="data.updated_date">
			                	   
                    	<div class="panel panel-info" style="max-width: 60%;" align="left">                                
                        	<div class="panel-body" >	
				                <div class="form-group">
				                    <label for="role" class="col-sm-3 control-label">Role</label>
				                    <div class="col-sm-9">
				                        <input type="text" id="role" name="role" ng-model="data.role" placeholder="Role" class="form-control" autofocus required>
				                    </div>
				                </div> <!-- /.form-group -->
				                
				                <div class="form-group">
					                <div class="col-sm-9 col-sm-offset-3">
					                    <button ng-click="addRole();" class="btn btn-primary " ng-show="buttonControl">Add Role</button>
					                    <button ng-click="updateRole();" class="btn btn-primary " ng-hide="buttonControl">Update Role</button>
					                    
					                    <a href="/ControlAccess" class="btn btn-primary">Add Control Access  <span class="glyphicon glyphicon-forward"></span></a>
					                </div>
					            </div> <!-- /.form-group -->
					        </div>
                    	</div>
                    	
                    	<div class="panel panel-info" style="max-width: 60%;" align="left">           
	                        <div class="panel-body" >	                        	
					            <table class="table table-bordered">
					                	<thead>
					                		<tr>
					                			<th class="col-sm-2 text-center">Sr.No.</th>
					                			<th class="col-sm-7 text-center">Role</th>
					                			<th class="col-sm-3 text-center">Option</th>
					                		</tr>
					                	</thead>
					                	<tbody>
					                		<tr ng-repeat="role in roleList">
					                			<td class="text-center">{{$index + 1}}</td>
					                			<td>{{role.role}}</td>
					                			<td class="text-center">
					                				<a href="#" ng-click="editRole(role);">Edit</a> |
					                				<a href="#" ng-click="deleteRole(role);">Delete</a>
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