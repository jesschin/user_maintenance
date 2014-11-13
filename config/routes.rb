UserMaintenance::Engine.routes.draw do

  devise_for :users, class_name: "UserMaintenance::User", :module => :devise

  resource :user, :as => :profile, :path => :profile, :only => [:show, :edit, :update] do
    get 'edit_password'
    put 'update_password'
  end

  scope '/admin', :except => :destroy do
    resources :users do
      get 'reset_password' => 'users#resetting_password'
      put 'reset_password' => 'users#reset_password'
      put 'enable'
    end
  end

end
