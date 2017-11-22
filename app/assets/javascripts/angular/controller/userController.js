myApp.controller('userController', ['$scope','Home', function ($scope,Home) {
	$scope.init = function() {
		if(typeof json != 'undefined'){
			angular.forEach(json,function(value,key) {
				$scope[key] = value;
			});
		}
	}

	$scope.init();
}])