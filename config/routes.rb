Rails.application.routes.draw do
  resources :types
  resources :languages
  resources :expertises
  resources :skills
  resources :users


  root to: "home#index"
  get "/auth/:provider/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout

  put 'users/:id/edit' => 'users#edit'

  get 'home/show' => 'home#show'

  # put '/profile/:id/edit' => 'users#profileEdit'
  # get '/profile/:id/edit' => 'users#profileEdit'
  # get '/profile/:id' => 'users#profileShow'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


