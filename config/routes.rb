Rails.application.routes.draw do

  resources :topics do
    resources :posts, except: [:index]
  end

  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]
  end 

  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  #Get Requests to create routes for our view

  get 'about' => 'welcome#about'

  # You can have the root of your site routed with "root"
  root 'welcome#index'

end
