UserMaintenance::Engine.routes.draw do

  devise_for :users, class_name: "UserMaintenance::User", :module => :devise

  resource :user, :as => :profile, :path => :profile, :only => [:show, :edit, :update] do
    get 'edit_password'
    patch 'update_password'
  end

  scope '/admin', :except => :destroy do
    resources :users do
      member do
        get 'reset_password' => 'users#resetting_password'
        patch 'reset_password' => 'users#reset_password'
        patch 'enable'
      end
    end
  end

end
