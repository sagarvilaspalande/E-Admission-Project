var app = angular.module('HomeApp', []);


app.config([ '$httpProvider', function($httpProvider) {
	$httpProvider.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';
} ]);

app.directive('focusMe', function () {
    return {
        link: function(scope, element, attrs) {
            scope.$watch(attrs.focusMe, function(value) {
                if(value === true) {
                    element[0].focus();
                    element[0].select();
                }
            });
        }
    };
});


app.controller('HomeCntrl', function($scope,$http){

	$scope.useridfocus = true;
	$scope.passwordfocus = false;
	
	$scope.selectRole = function(value){    
		//alert(value);
		$scope.selectedType = value;
		$scope.valueOfSelected = value;		
	};
	
	$scope.setValues = function(){    
		//alert("Inside Set values = "+$scope.selectedType);
	};
	
	$scope.getUserDetails = function(){	
		$http.post('/GetUserById',$scope.data).then(function(response){			
			if(response.data){
				
				$scope.data.userName = response.data.userName;
				$scope.useridfocus = false;
				$scope.passwordfocus = true;
			}else{
				
				$scope.data.userid = "";
				$scope.data.password = "";
				$scope.data.userName = "";
				$scope.useridfocus = true;
				$scope.errormessage = "User Does Not Exist!";				
			}
		});		
	};
	
});