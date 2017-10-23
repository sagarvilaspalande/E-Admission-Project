var app = angular.module('DepartmentApp', []);


app.config([ '$httpProvider', function($httpProvider) {
	$httpProvider.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';
} ]);

app.controller('DepartmentCntrl', function($scope,$http){

	$scope.buttonControl = true;
	$scope.message = "";

	//For Getting all departments on page load
	$http.post('/GetAllDepartments').then(function(response){
		$scope.departmentList = response.data;
	});
	//For Adding Department
	$scope.addDepartment = function(){    
		if ($scope.departmentForm.$valid) {
			$http.post('/AddDepartment',JSON.stringify($scope.data)).then(function(response){
				$scope.departmentList = response.data;
				$scope.data = [];
				$scope.message = "Record Addeed Successfully";});
		}
	};
	//For Deleting Department
	$scope.deleteDepartment = function(department){
		if (confirm("Are You Sure To Delete The Record?")) {
			$http.post('/DeleteDepartment',
					JSON.stringify(department)
			).then(function(response){
				$scope.data = [];
				$scope.departmentList = response.data;
				$scope.buttonControl = true;
				$scope.message = "Record Deleted Successfully";
			});
		}    			
	};
	//For Set Values To Data
	$scope.editDepartment = function(department){ 	
		$scope.data = department;
		$scope.buttonControl = false;
		$scope.message = "";
	};
	//For Updating department
	$scope.updateDepartment = function(){
		$http.post('/UpdateDepartment',
				JSON.stringify($scope.data)
		).then(function(response){
			$scope.data = [];
			$scope.departmentList = response.data;
			$scope.buttonControl = true;
			$scope.message = "Record Updated Successfully";
		});
	};
});