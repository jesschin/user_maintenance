Rails.application.routes.draw do

  mount UserMaintenance::Engine => "/user_maintenance"

  root :to => "home#index"
end
