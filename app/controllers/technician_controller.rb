class TechnicianController < ApplicationController
  def new
  end

  def create
  	if params[:technician] != nil
  		tech = Technician.create(name: params[:technician][:name],address: params[:technician][:address], city: params[:technician][:city],  state: params[:technician][:state],country: params[:technician][:country], mobile: params[:technician][:mobile])
  	end
  end
end
