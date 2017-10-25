<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html ng-app="RoleApp">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Role Master</title>
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
                <h3><b><font color="black" style="font-family: sans-serif;">Role Master</font> </b></h3>
            </div>
            <div class="panel-body"align="center">
            	 <label style="color: #B40486;">{{message}}</label> 
                             
                <div class="container " style="margin-top: ; margin-bottom: 12%;">
                	 <form class="form-horizontal" role="form" name="roleForm">
                        	<input type = "hidden" id = "roleid" name = "roleid" ng-model="data.roleid">
                        	<input type = "hidden" id = "brCode" name = "brCode" ng-model="data.brCode">
		                	<input type = "hidden" id = "status" name = "status" ng-model="data.status">
		                	<input type = "hidden" id = "createdBy" name = "createdBy" ng-model="data.createdBy">
		                	<input type = "hidden" id = "createdDate" name = "createdDate" ng-model="data.createdDate">
		                	<input type = "hidden" id = "deletedBy" name = "deletedBy" ng-model="data.deletedBy">
		                	<input type = "hidden" id = "deletedDate" name = "deletedDate" ng-model="data.deletedDate">
		                	<input type = "hidden" id = "updatedBy" name = "updatedBy" ng-model="data.updatedBy">
		                	<input type = "hidden" id = "updatedDate" name = "updatedDate" ng-model="data.updatedDate">
			                	   
                    	<div class="panel panel-info" style="max-width: 60%;" align="left">                                
                        	<div class="panel-body" >	
				                <div class="form-group">
				                    <label for="roleName" class="col-sm-3 control-label">Role</label>
				                    <div class="col-sm-9">
				                        <input type="text" id="roleName" name="roleName" ng-model="data.roleName" placeholder="Role" class="form-control" autofocus required>
				                    </div>
				                </div> <!-- /.form-group -->
				                
				                <div class="form-group">
					                <div class="col-sm-9 col-sm-offset-3">
					                    <button ng-click="addRole();" class="btn btn-primary " ng-show="buttonControl">Add Role</button>
					                    <button ng-click="updateRole();" class="btn btn-primary " ng-hide="buttonControl">Update Role</button>
					                    <a class="btn btn-primary " href="/AdminHome"><span class="glyphicon glyphicon-backward"></span> Back</a>
					                    <a href="/RoleAccess" class="btn btn-primary">Add Control Access <span class="glyphicon glyphicon-forward"></span></a>					                    
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
					                			<td>{{role.roleName}}</td>
					                			<td class="text-center">
					                				<a href="#" ng-click="editRole(role);">
					                					<span style="color: blue;" class="glyphicon glyphicon-edit"></span>
					                				</a> |
					                				<a href="#" ng-click="deleteRole(role);">
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