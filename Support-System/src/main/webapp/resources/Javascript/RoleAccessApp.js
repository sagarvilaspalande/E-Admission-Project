var app = angular.module('RoleAccessApp', []);

app.config([ '$httpProvider', function($httpProvider) {
	$httpProvider.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';
} ]);

app.controller('RoleAccessCtrl', function($scope,$http){

	$scope.buttonControl = true;
	$scope.message = "";
	
	$http.post('/GetAllControlAccesses').then(function(response){
		$scope.controlAccessList = response.data;
	});

    $scope.checkedControlAccesses = [];
    
    $scope.toggleCheck = function (controlaccess) {
    	 //alert($scope.controlAccessList);  
        if ($scope.checkedControlAccesses.indexOf(controlaccess) === -1) {
            $scope.checkedControlAccesses.push(controlaccess);
            //alert($scope.checkedControlAccesses);
        } else {
            $scope.checkedControlAccesses.splice($scope.checkedControlAccesses.indexOf(controlaccess), 1);
            //alert($scope.checkedControlAccesses);
        }             
    };
	
	$http.post('/GetAllRoles').then(function(response){
		$scope.roleList = response.data;		 
	});
	
	$http.post('/GetAllRoleAccesses').then(function(response){
		$scope.roleAccessList = response.data;
	});
	
	$scope.addRoleAccess = function(){    
		if ($scope.roleAccessForm.$valid) {
			alert(JSON.stringify($scope.data));
			$http.post('/AddRoleAccess',JSON.stringify($scope.data)).then(function(response){
				$scope.roleAccessList = response.data;
				$scope.data = [];
				$scope.message = "Record Added Successfully!";});
		}
	};
	
	$scope.deleteRoleAccess = function(roleaccess){
		if (confirm("Are You Sure To Delete The Record?")) {
			$http.post('/DeleteRoleAccess',
					JSON.stringify(roleaccess)
			).then(function(response){
				$scope.data = [];
				$scope.roleAccessList = response.data;
				$scope.buttonControl = true;
				$scope.message = "Record Deleted Successfully!";
			});
		}    			
	};
	
	$scope.editRoleAccess = function(roleaccess){ 	
		$scope.data = roleaccess;
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
			$scope.message = "Record Updated Successfully!";
		});
	};
});

/*app.directive('multiselectDropdown', function () {
    return {
        restrict: 'E',
        scope: {
            model: '=',
            options: '=',
        },
        template:
            "<div class='btn-group' data-ng-class='{open: open}' style='width: 200px;'>" +
            "<button class='btn btn-small' style='width: 160px;'>---Select---</button>" +
            "<button class='btn btn-small dropdown-toggle' data-ng-click='openDropdown()' style='width: 40px;' ><span class='caret'></span></button>" +
            "<ul class='dropdown-menu' aria-labelledby='dropdownMenu' style='position: relative;'>" +
            "<li style='cursor:pointer;' data-ng-repeat='option in options'><a data-ng-click='toggleSelectItem(option)'><span data-ng-class='getClassName(option)' aria-hidden='true'></span> {{option.name}}</a></li>" +
            "</ul>" +
            "</div>",

        controller: function ($scope) {

            $scope.openDropdown = function () {

                $scope.open = !$scope.open;

            };

            $scope.selectAll = function () {

                $scope.model = [];

                angular.forEach($scope.options, function (item, index) {

                    $scope.model.push(item);

                });

            };

            $scope.deselectAll = function () {

                $scope.model = [];

            };

            $scope.toggleSelectItem = function (option) {

                var intIndex = -1;

                angular.forEach($scope.model, function (item, index) {

                    if (item.id == option.id) {

                        intIndex = index;

                    }

                });

                if (intIndex >= 0) {

                    $scope.model.splice(intIndex, 1);

                } else {

                    $scope.model.push(option);

                }

            };

            $scope.getClassName = function (option) {

                var varClassName = 'glyphicon glyphicon-remove-circle';

                angular.forEach($scope.model, function (item, index) {

                    if (item.id == option.id) {

                        varClassName = 'glyphicon glyphicon-ok-circle';

                    }

                });

                return (varClassName);

            };

        }
    }

});*/

