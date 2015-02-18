require "rails_helper"

module UserMaintenance
  RSpec.describe UsersController, :type => :routing do
    describe "routing" do
      routes { UserMaintenance::Engine.routes }

      it "routes to #index" do
        expect(:get => users_path).to route_to(:controller => 'user_maintenance/users',
                                               :action => 'index')
      end

      it "routes to #new" do
        expect(:get => new_user_path).to route_to(:controller => 'user_maintenance/users',
                                                  :action => 'new')
      end

      it "routes to #show" do
        expect(:get => user_path(1)).to route_to(:controller => 'user_maintenance/users',
                                               :action => 'show', :id => '1')
      end

      it "routes to #edit" do
        expect(:get => edit_user_path(1)).to route_to(:controller => 'user_maintenance/users',
                                                    :action => 'edit', :id => '1')
      end

      it "routes to #create" do
        expect(:post => users_path).to route_to(:controller => 'user_maintenance/users',
                                              :action => 'create')
      end

      it "routes to #update" do
        expect(:patch => user_path(1)).to route_to(:controller => 'user_maintenance/users',
                                               :action => 'update', :id => '1')
      end

      it "routes to #edit_password" do
        expect(:get => edit_password_profile_path).to route_to(:controller => 'user_maintenance/users',
                                               :action => 'edit_password')
      end

      it "routes to #update_password" do
        expect(:patch => update_password_profile_path).to route_to(:controller => 'user_maintenance/users',
                                               :action => 'update_password')
      end

      it "routes to profile #show" do
        expect(:get => profile_path).to route_to(:controller => 'user_maintenance/users',
                                               :action => 'show')
      end

      it "routes to profile #edit" do
        expect(:get => edit_profile_path).to route_to(:controller => 'user_maintenance/users',
                                               :action => 'edit')
      end

      it "routes to profile #update" do
        expect(:patch => profile_path).to route_to(:controller => 'user_maintenance/users',
                                               :action => 'update')
      end

      it "routes to #resetting_password" do
        expect(:get => reset_password_user_path(1)).to route_to(:controller => 'user_maintenance/users',
                                               :action => 'resetting_password', :id => '1')
      end

      it "routes to #resetting_password" do
        expect(:patch => reset_password_user_path(1)).to route_to(:controller => 'user_maintenance/users',
                                               :action => 'reset_password', :id => '1')
      end

      it "routes to #enable" do
        expect(:patch => enable_user_path(1)).to route_to(:controller => 'user_maintenance/users',
                                               :action => 'enable', :id => '1')
      end

    end
  end
end
