class ServiceController < ApplicationController
  def new
  end

  def create 
  	if params[:service] != nil
  		cust = Customer.create(name: params[:service][:cust_name],address: params[:service][:cust_address],city: params[:service][:cust_city],state: params[:service][:cust_state],country: params[:service][:cust_country],email: params[:service][:cust_email],mobile: params[:service][:cust_mobile])
  		service_date = (params[:service][:requested_date].to_date)+1.day
  		service = Service.create(problem: params[:service][:problem],ac_type: params[:service][:ac_type],ac_count: params[:service][:count],brand: params[:service][:brand],requested_date: service_date,customer_id: cust.id)
  	end
  end
end
