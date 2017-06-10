Rails.application.routes.draw do

  devise_for :walkers
  get "/walkers", :controller => "walkers", :action => "index"
  get "/walkers/:id", :controller => "walkers", :action => "show"

  devise_for :users
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  #Route for Homepage resource:
  get "/", :controller => "home", :action => "index"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
