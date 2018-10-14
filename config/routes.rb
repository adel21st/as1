Rails.application.routes.draw do

	resources :posts
	resources :cities
	
	devise_for :users, :controllers => {:registrations => "registrations"}
	root to: 'pages#index'

	devise_scope :user do
		get 'signin', to: 'devise/sessions#new'
		get 'signup', to: 'devise/registrations#new'
		get '/users/sign_out', to: 'devise/sessions#destroy'
	end


end
