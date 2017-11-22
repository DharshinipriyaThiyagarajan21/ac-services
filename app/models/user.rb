class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable 
  mount_uploader :avatar, AvatarUploader

  # before_create :confirmation_token
  after_create :signup_email

  def signup_email
  	UserMailer.send_signup_email(self).deliver
  end


  # def confirmation_token
  # 	if self.confirm_token.blank?
  # 		self.confirm_token = SecureRandom.urlsafe_base64.to_s
  # 		UserMailer.registration_confirmation(self).deliver
  # 	end
  # end
  
  # def confirm_email
  # 	user = User.find_by_confirm_token(params[:id])
  # 	if user
  # 		user.email_activate
  # 		flash[:success] = "Welcome to the Our App! Your email has been confirmed.
  # 		Please sign in to continue."
  # 		redirect_to new_user_session_path
  # 	else
  # 		flash[:error] = "Sorry. User does not exist"
  # 		redirect_to root_url
  # 	end
  # end

  # def email_activate
  # 	self.email_confirmed = true
  # 	self.confirm_token = nil
  # 	save!(:validate => false)
  # end

end
