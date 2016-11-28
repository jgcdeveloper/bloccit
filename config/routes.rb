Rails.application.routes.draw do

  resources :topics
  resources :posts

  #Get Requests to create routes for our view

  get 'about' => 'welcome#about'

  # You can have the root of your site routed with "root"
  root 'welcome#index'

end
