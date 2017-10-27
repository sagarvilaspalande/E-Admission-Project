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
	<script type="text/javascript" src="/resources/Javascript/jquery.min.js"></script>
	<script type="text/javascript" src="/resources/Javascript/bootstrap.min.js"></script>
	<script src="/resources/Javascript/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="/resources/Javascript/RoleApp.js"></script>
</head>
<body ng-controller="RoleController">
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
            <h3 align="center"><b><font color="black" style="font-family: sans-serif;">Role Master</font> </b></h3>
            <div class="panel-body" align="center">
            	<label style="color: #B40486;">{{message}}</label>                             
                <div class="container " style="margin-top: ; margin-bottom: ;">
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
				                    <label for="roleName" class="col-sm-4 control-label">Role</label>
				                    <div class="col-sm-8">
				                        <input type="text" id="roleName" name="roleName" ng-model="data.roleName" placeholder="Role" class="form-control" autofocus required>
				                    </div>
				                </div> <!-- /.form-group -->
				                
				                <div class="form-group">
					                <div class="col-sm-8 col-sm-offset-4">
					                    <button ng-click="addRole();" class="btn btn-primary" ng-show="buttonControl">Add Role</button>
					                    <button ng-click="updateRole();" class="btn btn-primary" ng-hide="buttonControl">Update Role</button>
					                    <!-- <a class="btn btn-primary " href="/AdminHome"><span class="glyphicon glyphicon-backward"></span> Back</a> -->
					                    <a href="/RoleAccess" class="btn btn-primary">Add Control Access <span class="glyphicon glyphicon-forward"></span></a>					                    
					                </div>
					            </div> <!-- /.form-group -->
					        </div>
                    	</div>
                    	
                    	<div class="panel panel-info" style="max-width: 60%;" align="left">           
	                        <div class="panel-body" >	
	                        	<div class="table-responsive">                          	
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
	                    </div>
				    </form> <!-- /form -->
                </div>
            </div>
        </div> 
    </div> <!-- ./container -->
    
</body>
</html>