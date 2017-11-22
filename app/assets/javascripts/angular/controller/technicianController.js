myApp.controller('technicianController', ['$scope','$window','Technician','Customer', function ($scope,$window,Technician,Customer) {
	$scope.init = function() {
		if(typeof json != 'undefined'){
			angular.forEach(json,function(value,key) {
				$scope[key] = value;
			});
		}
	}

	$scope.init();
	$scope.saveTechnician = function() {
		console.log($scope.technician);
		tech = new Technician($scope.technician);
		tech.save().then(function(response){
			console.log("response",response);
			$window.location.href = '/home'			
		});
	}

}]);