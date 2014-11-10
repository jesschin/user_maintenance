UserMaintenance::Engine.routes.draw do
  resources :users

  devise_for :users, class_name: "UserMaintenance::User", :module => :devise
end
