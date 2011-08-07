ActionController::Routing::Routes.draw do |map|
  map.resources :users

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'

  # catch-all for routes that don't exist, redirect to login
  ActionController::Routing::Routes.draw do |map|
      map.connect ':controller/:action/:id'
      map.connect '*path', :controller => 'login', :action => 'index'
  end

end
