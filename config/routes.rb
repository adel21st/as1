Rails.application.routes.draw do

	root to: 'pages#index'
	devise_for :users, :controllers => {:registrations => "registrations"}


	devise_scope :user do
		get 'signin', to: 'devise/sessions#new'
		get 'signup', to: 'devise/registrations#new'
		get '/users/sign_out', to: 'devise/sessions#destroy'
	end

	resources :posts
	resources :cities
	
	get :search, controller: :main
   
end
