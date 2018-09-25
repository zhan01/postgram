Rails.application.routes.draw do
  namespace :admin do
      resources :conversations
      resources :messages
      resources :publishes
      resources :users

      root to: "conversations#index"
    end
	get '/register', to: 'users#new' # manually mapping user registration to /register instead of /users/new -> therefore not listed under resources

	resources :users, only: [:show, :create, :edit, :update] #note we don't want an index route to show all users

	get '/login', to: 'sessions#new'
	post '/login', to: 'sessions#create'
	get '/logout', to: 'sessions#destroy'
	

	root 'publishes#index'
	resources :publishes
	resources :users

	resources :conversations, only: [:index, :create] do
	  resources :messages, only: [:index, :create]
	end


  	get 'auth/:provider/callback' , to: 'sessions#create'
  	get 'auth/failure' , to: redirect('/')
  	get 'signout' , to: 'sessions#destroy' , as: 'signout'
  
  	
  	# ----- end of added lines -----
	
end

