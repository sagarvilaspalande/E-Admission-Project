var app = angular.module('UserApp', []);


app.config([ '$httpProvider', function($httpProvider) {
	$httpProvider.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';
} ]);

app.controller('UserCntrl', function($scope,$http){

	$scope.buttonControl = true;
	$scope.message = "";
	
	$http.post('/GetAllDepartments').then(function(response){
		$scope.departmentList = response.data;
		 
	});

	$http.post('/GetAllRoles').then(function(response){
		$scope.roleList = response.data;
		 
	});
	
	$http.post('/GetAllUsers').then(function(response){
		$scope.userList = response.data;
	});
	
	$scope.addUser = function(){    
		if ($scope.userForm.$valid) {
			$http.post('/AddUser',JSON.stringify($scope.data)).then(function(response){
				$scope.userList = response.data;
				$scope.data = [];
				$scope.message = "Record Added Successfully!";});
		}
	};
	
	$scope.deleteUser = function(user){
		if (confirm("Are You Sure To Delete The Record?")) {
			$http.post('/DeleteUser',
					JSON.stringify(user)
			).then(function(response){
				$scope.data = [];
				$scope.userList = response.data;
				$scope.buttonControl = true;
				$scope.message = "Record Deleted Successfully!";
			});
		}    			
	};
	
	$scope.editUser = function(user){ 	
		$scope.data = user;
		$scope.buttonControl = false;
		$scope.message = "";
	};
	
	$scope.updateUser = function(){
		$http.post('/UpdateUser',
				JSON.stringify($scope.data)
		).then(function(response){
			$scope.data = [];
			$scope.userList = response.data;
			$scope.buttonControl = true;
			$scope.message = "Record Updated Successfully!";
		});
	};
	
	
});