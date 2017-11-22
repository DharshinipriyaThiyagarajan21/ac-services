myApp.controller('customerController', ['$scope','Customer','$window', function ($scope,Customer,$window) {

	$scope.saveCustomer = function() {
		console.log($scope.customer);
		cust = new Customer($scope.customer);
		cust.save().then(function(response){
			console.log("response",response);
			$window.location.href = '/home'			
		});
		
	}
}]);