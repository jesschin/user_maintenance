UserMaintenance::Engine.routes.draw do
  devise_for :users, class_name: "UserMaintenance::User", :module => :devise
end
