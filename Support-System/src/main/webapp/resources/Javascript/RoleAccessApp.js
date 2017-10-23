var app = angular.module('RoleAccessApp', []);


app.config([ '$httpProvider', function($httpProvider) {
	$httpProvider.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';
} ]);

app.controller('RoleAccessCtrl', function($scope,$http){

	$scope.buttonControl = true;
	$scope.message = "";

	$http.post('/GetRoles').then(function(response){
		$scope.roleList = response.data;
	});
	
	$http.post('/GetControlAccesses').then(function(response){
		$scope.controlAccessList = response.data;
	});
	
	$http.post('/GetAllRoleAccesses').then(function(response){
		$scope.roleAccessList = response.data;
	});
	
	$scope.addRoleAccess = function(){    
		if ($scope.roleAccessForm.$valid) {
			$http.post('/AddRoleAccess',JSON.stringify($scope.data)).then(function(response){
				$scope.roleAccessList = response.data;
				$scope.data = [];
				$scope.message = "Record Addeed Successfully";});
		}
	};
	
	$scope.deleteRoleAccess = function(role_access){
		if (confirm("Are You Sure To Delete The Record?")) {
			$http.post('/DeleteRoleAccess',
					JSON.stringify(role_access)
			).then(function(response){
				$scope.data = [];
				$scope.roleAccessList = response.data;
				$scope.buttonControl = true;
				$scope.message = "Record Deleted Successfully";
			});
		}    			
	};
	
	$scope.editRoleAccess = function(role_access){ 	
		$scope.data = role_access;
		$scope.buttonControl = false;
		$scope.message = "";
	};
	
	$scope.updateRoleAccess = function(){
		$http.post('/UpdateRoleAccess',
				JSON.stringify($scope.data)
		).then(function(response){
			$scope.data = [];
			$scope.roleAccessList = response.data;
			$scope.buttonControl = true;
			$scope.message = "Record Updated Successfully";
		});
	};
});