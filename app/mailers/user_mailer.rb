class UserMailer < ApplicationMailer
	def send_signup_email(user)
		@user = user
		mail( :to => @user.email,
			:subject => 'Thanks for signing up for our amazing app' )
	end

	def registration_confirmation(user)
		@user = user
		mail(:to => @user.email, :subject => "Registration Confirmation")
	end
end
