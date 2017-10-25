var app = angular.module('RoleApp', []);


app.config([ '$httpProvider', function($httpProvider) {
	$httpProvider.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';
} ]);

app.controller('RoleController', function($scope,$http){

	$scope.buttonControl = true;
	$scope.message = "";

	$http.post('/GetAllRoles').then(function(response){
		$scope.roleList = response.data;
	});
	
	$scope.addRole = function(){    
		if ($scope.roleForm.$valid) {
			$http.post('/AddRole',JSON.stringify($scope.data)).then(function(response){
				$scope.roleList = response.data;
				$scope.data = [];
				$scope.message = "Record Added Successfully!";});
		}
	};
	
	$scope.deleteRole = function(role){
		if (confirm("Are You Sure To Delete The Record?")) {
			$http.post('/DeleteRole',
					JSON.stringify(role)
			).then(function(response){
				$scope.data = [];
				$scope.roleList = response.data;
				$scope.buttonControl = true;
				$scope.message = "Record Deleted Successfully!";
			});
		}    			
	};
	
	$scope.editRole = function(role){ 	
		$scope.data = role;
		$scope.buttonControl = false;
		$scope.message = "";
	};
	
	$scope.updateRole = function(){
		$http.post('/UpdateRole',
				JSON.stringify($scope.data)
		).then(function(response){
			$scope.data = [];
			$scope.roleList = response.data;
			$scope.buttonControl = true;
			$scope.message = "Record Updated Successfully!";
		});
	};
});