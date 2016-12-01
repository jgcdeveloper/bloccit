Rails.application.routes.draw do

  resources :topics do
    resources :posts, except: [:index]
    resources :sponsored_posts, except: [:index]
  end

  #Get Requests to create routes for our view

  get 'about' => 'welcome#about'

  # You can have the root of your site routed with "root"
  root 'welcome#index'

end
