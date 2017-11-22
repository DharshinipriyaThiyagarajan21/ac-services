class HomeController < ApplicationController
	before_action :authenticate_user!

	def index
		@technicians = Technician.all
		@customers = Customer.all
		@services = Service.all

	end
	
end
