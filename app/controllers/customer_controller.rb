class CustomerController < ApplicationController
	def new
	end
	def create 
		if params[:customer] != nil
			cust = Customer.create(name: params[:customer][:name],address: params[:customer][:address], city: params[:customer][:city], state: params[:customer][:state], country: params[:customer][:country], mobile: params[:customer][:mobile],email: params[:customer][:email])
		end
	end
	
end
