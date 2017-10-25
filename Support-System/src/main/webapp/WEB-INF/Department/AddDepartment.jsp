<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html ng-app="DepartmentApp">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Department Master</title>
	<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
	<script type="text/javascript" src="/resources/Javascript/angular.min.js"></script>
	<script type="text/javascript" src="/resources/Javascript/bootstrap.min.js"></script>
	
	<script type="text/javascript" src="/resources/Javascript/DepartmentApp.js"></script>
</head>
<body ng-controller="DepartmentCntrl">
	<br>
    <div class="container-fluid">
    	<div class="panel panel-info">
            <div class="panel-heading form-group" align="center">
                <h3><b><font color="black" style="font-family: sans-serif;">Department Master</font> </b></h3>
            </div>
            
            <div class="panel-body"align="center">   
            <label style="color: #B40486;">{{message}}</label> 
                   
                <div class="container " style="margin-top: ; margin-bottom: 12%;">
                	<form class="form-horizontal" role="form" name="departmentForm">    
	                	<input type = "hidden" id = "departmentid" name = "departmentid" ng-model="data.departmentid">
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
					                    <label for="departmentName" class="col-sm-3 control-label">Department</label>
					                    <div class="col-sm-9">
					                    	
					                        <input type="text" id="departmentName" ng-model="data.departmentName" placeholder="Department" name = "departmentName" class="form-control" autofocus required>
					                    </div>
					                </div> <!-- /.form-group -->
					                
					                <div class="form-group">
					                    <div class="col-sm-9 col-sm-offset-3">
					                        <button ng-click="addDepartment();" class="btn btn-primary " ng-show="buttonControl">Add Department</button>
					                        <button ng-click="updateDepartment();" class="btn btn-primary " ng-hide="buttonControl">Update Department</button>
					                        <a class="btn btn-primary " href="/AdminHome"><span class="glyphicon glyphicon-backward"></span> Back</a>
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
					                			<th class="col-sm-7 text-center">Department</th>
					                			<th class="col-sm-3 text-center">Option</th>
					                		</tr>
					                	</thead>
					                	<tbody>
					                		<tr ng-repeat="department in departmentList">
					                			<td class="text-center">{{$index + 1}}</td>
					                			<td>{{department.departmentName}}</td>
					                			<td class="text-center">
					                				<a href="#" ng-click="editDepartment(department);">
					                					<span style="color: blue;" class="glyphicon glyphicon-edit"></span>
					                				</a> |
					                				<a href="#" ng-click="deleteDepartment(department);">
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