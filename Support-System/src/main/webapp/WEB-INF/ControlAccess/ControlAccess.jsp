<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html ng-app="ControlAccessApp">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Control Access</title>
	
	<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
	<script type="text/javascript" src="/resources/Javascript/angular.min.js"></script>
	<script type="text/javascript" src="/resources/Javascript/jquery.min.js"></script>
	<script type="text/javascript" src="/resources/Javascript/bootstrap.min.js"></script>
	
	<script type="text/javascript" src="/resources/Javascript/ControlAccessApp.js"></script>	
	
</head>
<body ng-controller="ControlAccessCtrl">
	<br>
    <div class="container-fluid">
    	<div class="panel panel-info">
            <div class="panel-heading form-group" align="center">
                <h3><b><font color="black" style="font-family: sans-serif;">Add Control Access</font> </b></h3>
            </div>
            <div class="panel-body"align="center">
            	 <label>{{message}}</label> 
            	<br>                    
                <div class="container " style="margin-top: ; margin-bottom: 12%;">
                	 <form class="form-horizontal" role="form" name="controlAccessForm">
                        		<input type = "hidden" id = "control_access_id" name = "control_access_id" ng-model="data.control_access_id">
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
				                    <label for="control_access_type" class="col-sm-3 control-label">Control Access</label>
				                    <div class="col-sm-9">
				                        <input type="text" id="control_access_type" name="control_access_type" ng-model="data.control_access_type" placeholder="Control Access Type" class="form-control" autofocus required>
				                    </div>
				                </div> <!-- /.form-group -->
				                
				                <div class="form-group">
					                <div class="col-sm-9 col-sm-offset-3">
					                    <button ng-click="addControlAccess();" class="btn btn-primary " ng-show="buttonControl">Add Control Access</button>
					                    <button ng-click="updateControlAccess();" class="btn btn-primary " ng-hide="buttonControl">Update Control Access</button>
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
					                			<th class="col-sm-7 text-center">Control Access</th>
					                			<th class="col-sm-3 text-center">Option</th>
					                		</tr>
					                	</thead>
					                	<tbody>
					                		<tr ng-repeat="control_access in controlAccessList">
					                			<td class="text-center">{{$index + 1}}</td>
					                			<td>{{control_access.control_access_type}}</td>
					                			<td class="text-center">
					                				<a href="#" ng-click="editControlAccess(control_access);">
					                					<span style="color: blue;" class="glyphicon glyphicon-pencil"></span>
					                				</a> |
					                				<a href="#" ng-click="deleteControlAccess(control_access);">
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