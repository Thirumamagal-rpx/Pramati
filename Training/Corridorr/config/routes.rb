Rails.application.routes.draw do
  get 'launch/new'

  get 'apps/new'

  get '/apps/new' 

   post 'launch/new', to: 'launch#show'

	get "log_out" => "sessions#destroy", :as => "log_out"

  get 'log_in' => 'sessions#new' , :as => 'log_in'

  get "sign_up" => "users#new", :as => "sign_up"

  # post 'launch/create'   => 'launch#create'

  

 root :to => 'users#index'


resources :users
resources :sessions
resources :apps
resources :launch 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
