class Users::RegistrationsController < Devise::RegistrationsController
  def new
    super  
  end
  def create
      #Check whether user is already present in table
      if User.where(:email => params['user']['email']).present?
        flash[:signup] = "Email already registered. Please sign-up with different email" 
        redirect_to action: "new"
      else
        super
      end
  end

  def edit
    @user = current_user
    @user
  end

  def update
    if params[:user][:password] == params[:user][:password_confirmation]
      current_user.update_attributes(user_params)
      redirect_to '/'
    else
      redirect_to '/users/edit'
    end
  end

  private
  def user_params
    params[:user].permit("email","firstname","lastname","password","password_confirmation","avatar")
  end
end
