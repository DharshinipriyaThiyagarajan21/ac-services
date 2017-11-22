myApp.factory('Home', ['railsResourceFactory', function(railsResourceFactory){
	var home = railsResourceFactory({
		url: '/home',
		name: 'home'
	})
	// technician.get_data = function(data){
	// 	return this.$post('/get_data',data);
	// }
	return home;
}])


myApp.factory('Customer', ['railsResourceFactory', function(railsResourceFactory){
	var customer = railsResourceFactory({
		url: '/customer',
		name: 'customer'
	})
	return customer;
}])

myApp.factory('Technician', ['railsResourceFactory', function(railsResourceFactory){
	var technician = railsResourceFactory({
		url: '/technician',
		name: 'technician'
	})
	return technician;
}])

myApp.factory('Service', ['railsResourceFactory', function(railsResourceFactory){
	var service = railsResourceFactory({
		url: '/service',
		name: 'service'
	})
	return service;
}])