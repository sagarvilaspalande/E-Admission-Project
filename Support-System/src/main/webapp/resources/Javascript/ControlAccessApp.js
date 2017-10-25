var app = angular.module('ControlAccessApp', []);


app.config([ '$httpProvider', function($httpProvider) {
	$httpProvider.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';
} ]);

app.controller('ControlAccessCtrl', function($scope, $http){

	$scope.buttonControl = true;
	$scope.message = "";

	$http.post('/GetAllControlAccesses').then(function(response){
		$scope.controlAccessList = response.data;
	});
	
	$scope.addControlAccess = function(){    
		if ($scope.controlAccessForm.$valid) {
			$http.post('/AddControlAccess',JSON.stringify($scope.data)).then(function(response){
				$scope.controlAccessList = response.data;
				$scope.data = [];
				$scope.message = "Record Added Successfully!";});
		}
	};
	
	$scope.deleteControlAccess = function(control_access_type){
		if (confirm("Are You Sure To Delete The Record?")) {
			$http.post('/DeleteControlAccess',
					JSON.stringify(control_access_type)
			).then(function(response){
				$scope.data = [];
				$scope.controlAccessList = response.data;
				$scope.buttonControl = true;
				$scope.message = "Record Deleted Successfully!";
			});
		}    			
	};
	
	$scope.editControlAccess = function(control_access_type){ 	
		$scope.data = control_access_type;
		$scope.buttonControl = false;
		$scope.message = "";
	};
	
	$scope.updateControlAccess = function(){
		$http.post('/UpdateControlAccess',
				JSON.stringify($scope.data)
		).then(function(response){
			$scope.data = [];
			$scope.controlAccessList = response.data;
			$scope.buttonControl = true;
			$scope.message = "Record Updated Successfully!";
		});
	};
});