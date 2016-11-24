Rails.application.routes.draw do

  resources :posts
  resources :advertisements

  #Get Requests to create routes for our view

  get 'about' => 'welcome#about'

  # You can have the root of your site routed with "root"
  root 'welcome#index'

end
