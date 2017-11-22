Rails.application.routes.draw do

  get 'service/new'

  get 'technician/new'

  get 'customer/new'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users, controllers: { registrations: 'users/registrations'}
  devise_scope :user do
  	unauthenticated do
  		root 'devise/sessions#new'
  	end
  	authenticated do
  		root 'home#index'
  	end
  end

  get 'home/index'
  post '/get_data' => "home#get_data"
  get '/customer/new' => "customer#new"
  get '/technician/new' => "technician#new"
  get '/thankyou' => "home#thank_you"

  root to: "home#index"
  
  # resources :users do
  #   member do
  #     get :confirm_email
  #   end
  # end
  resources 'home'
  resources 'customer'
  resources 'technician'
  resources 'service'
end
