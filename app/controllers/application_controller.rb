class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	def configure_permitted_parameters
	    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :firstname, :lastname, :avatar])
	end

	def after_sign_in_path_for(resource)
		if current_user.admin?
			root_path
		else 
			new_service_url
		end
	end
end
