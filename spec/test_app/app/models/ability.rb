class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= UserMaintenance::User.new

    if user.is_any_of? :admin
      can :read, :home
      can [:read, :update, :enable, :resetting_password, :reset_password, :update_role], UserMaintenance::User
      can :create, UserMaintenance::User do |u|
        !u.persisted?
      end
      can [:update_profile, :edit_password, :update_password], UserMaintenance::User, :id => user.id
      cannot [:enable, :update_role, :resetting_password, :reset_password], UserMaintenance::User, :id => user.id
    elsif user.is_any_of? :user
      can :read, :home
      can :update_profile, UserMaintenance::User, :id => user.id
      can [:show, :update, :edit_password, :update_password], UserMaintenance::User, :id => user.id
    end
  end
end
