myApp.controller('serviceController', ['$scope','Service','$window', function ($scope,Service,$window) {

	$scope.saveService = function() {
		console.log($scope.service);
		console.log($scope.service.requested_date);
		service = new Service($scope.service);
		service.save().then(function(response){
			console.log("response",response);		
		});
		
	}
}]);