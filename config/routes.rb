Rails.application.routes.draw do

  #Get Requests to create routes for our view
  get 'welcome/index'

  get 'welcome/about'

  get "welcome/FAQ"

  # You can have the root of your site routed with "root"
  root 'welcome#index'

end
