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
                <h3><b><font color="black" style="font-family: sans-serif;">Control Access Master</font> </b></h3>
            </div>
            <div class="panel-body"align="center">
            	 <label style="color: #B40486;">{{message}}</label> 
            	               
                <div class="container " style="margin-top: ; margin-bottom: 7%;">
                	 <form class="form-horizontal" role="form" name="controlAccessForm">
                        <input type = "hidden" id = "controlaccessid" name = "controlaccessid" ng-model="data.controlaccessid">
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
				                    <label for="controlaccesstype" class="col-sm-3 control-label">Control Access</label>
				                    <div class="col-sm-9">
				                        <input type="text" id="controlaccesstype" name="controlaccesstype" ng-model="data.controlaccesstype" placeholder="Control Access Type" class="form-control" autofocus required>
				                    </div>
				                </div> <!-- /.form-group -->
				                
				                <div class="form-group">
					                <div class="col-sm-9 col-sm-offset-3">
					                    <button ng-click="addControlAccess();" class="btn btn-primary " ng-show="buttonControl">Add Control Access</button>
					                    <button ng-click="updateControlAccess();" class="btn btn-primary " ng-hide="buttonControl">Update Control Access</button>
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
					                			<th class="col-sm-7 text-center">Control Access</th>
					                			<th class="col-sm-3 text-center">Option</th>
					                		</tr>
					                	</thead>
					                	<tbody>
					                		<tr ng-repeat="controlaccess in controlAccessList">
					                			<td class="text-center">{{$index + 1}}</td>
					                			<td>{{controlaccess.controlaccesstype}}</td>
					                			<td class="text-center">
					                				<a href="#" ng-click="editControlAccess(controlaccess);">
					                					<span style="color: blue;" class="glyphicon glyphicon-edit"></span>
					                				</a> |
					                				<a href="#" ng-click="deleteControlAccess(controlaccess);">
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