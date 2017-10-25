<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html ng-app="RoleAccessApp">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Role Access</title>
	
	<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
	<script type="text/javascript" src="/resources/Javascript/angular.min.js"></script>
	<script type="text/javascript" src="/resources/Javascript/jquery.min.js"></script>
	<script type="text/javascript" src="/resources/Javascript/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="/resources/Javascript/angularjs-dropdown-multiselect.min.js"></script>
	
	<script type="text/javascript" src="/resources/Javascript/RoleAccessApp.js"></script>	
	
</head>
<body ng-controller="RoleAccessCtrl">
	<br>
    <div class="container-fluid">
    	<div class="panel panel-info">
            <div class="panel-heading form-group" align="center">
                <h3><b><font color="black" style="font-family: sans-serif;">Role Access Master</font> </b></h3>
            </div>
            <div class="panel-body"align="center">
            	 <label style="color: #B40486;">{{message}}</label> 
            	              
                <div class="container " style="margin-top: ; margin-bottom: 12%;">
                	 <form class="form-horizontal" role="form" name="roleAccessForm">
                        	<input type = "hidden" id = "roleaccessid" name = "roleaccessid" ng-model="data.roleaccessid">
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
				                    <label for="roleid" class="col-sm-3 control-label">Role</label>
				                    <div class="col-sm-9">
				                        <select id="roleid" ng-model="data.roleid" name = "roleid" class="form-control" required>
				                            <option ng-repeat="role in roleList" ng-selected="data.roleid == role.roleid" value = "{{role.roleid}}">{{role.roleName}}</option>	
				                        </select>
				                    </div>
				                </div> <!-- /.form-group -->
				                
				                <div class="form-group">
				                	<label for="controlaccessid" class="col-sm-3 control-label">Control Access</label>
				                	<div class="col-sm-9">
				                		<select id="controlaccessid" ng-model="data.controlaccessid" name = "controlaccessid" class="form-control" required>
				                            <option ng-repeat="controlaccess in controlAccessList" ng-selected="data.controlaccessid == controlaccess.controlaccessid" value = "{{controlaccess.controlaccessid}}">{{controlaccess.controlaccesstype}}</option>	                            
				                        </select>
				                	
				                	<!-- <select ng-dropdown-multiselect="" options="example1data" selected-model="example1model">
				                          	                            
				                        </select> -->
				                	<!-- 	 -->
				                	</div>								  
				                </div> <!-- /.form-group -->
				                
				                <!-- <div class="form-group">
				                 	<label for="roleAccess" class="col-sm-3 control-label">Role Access</label>
				                 	<div class="col-sm-9">
				                		<div class="radio">
											<label for="YES" class="radio-inline control-label">
												<input type="radio" id="roleAccess" name="roleAccess" ng-model="data.roleAccess" value="YES"/>
											YES</label>
											<label for="NO" class="radio-inline control-label">
												<input type="radio" id="roleAccess" name="roleAccess" ng-model="data.roleAccess" value="NO"/>
											NO</label>
										</div>
				                	</div>	                    
				                </div> /.form-group -->
				                
				                <div class="form-group">
					                <div class="col-sm-9 col-sm-offset-3">
					                    <button ng-click="addRoleAccess();" class="btn btn-primary " ng-show="buttonControl">Add Role Access</button>
					                    <button ng-click="updateRoleAccess();" class="btn btn-primary " ng-hide="buttonControl">Update Role Access</button>
					                    <a class="btn btn-primary " href="/AddRole"><span class="glyphicon glyphicon-backward"></span> Back</a>
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
					                			<th class="col-sm-4 text-center">Role</th>
					                			<th class="col-sm-4 text-center">Control Access</th>					                			
					                			<th class="col-sm-2 text-center">Option</th>
					                		</tr>
					                	</thead>
					                	<tbody>
					                		<tr ng-repeat="roleaccess in roleAccessList">
					                			<td class="text-center">{{$index + 1}}</td>
					                			<td>{{roleaccess.role.roleName}}</td>
					                			<td>{{roleaccess.controlAccess.controlaccesstype}}</td>					                			
					                			<td class="text-center">
					                				<a href="#" ng-click="editRoleAccess(roleaccess);">
					                					<span style="color: blue;" class="glyphicon glyphicon-edit"></span>
					                				</a> |
					                				<a href="#" ng-click="deleteRoleAccess(roleaccess);">
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
   </div><!-- ./container -->
</body>
</html>