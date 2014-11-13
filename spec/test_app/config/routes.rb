Rails.application.routes.draw do

  mount UserMaintenance::Engine => "/"

  root :to => "home#index"

end
