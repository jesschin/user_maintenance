require_dependency "user_maintenance/application_controller"

module UserMaintenance
  class UsersController < ApplicationController
    load_and_authorize_resource

    def index
      @users = UserMaintenance::User.where.not(:id => current_user.id)
    end

    def show
      @user ||= current_user
    end

    def new
    end

    def create
      @user.password_last_updated_by = current_user

      if @user.save
        redirect_to @user
      else
        render 'new'
      end
    end

    def edit
      @user ||= current_user
    end

    def update
      @user ||= current_user

      if @user.update_attributes(update_params)
        redirect_to((can? :update_profile, @user) ? profile_path : user_path(@user))
      else
        render 'edit'
      end
    end

    def enable
      if @user.update(:enabled => !@user.enabled)
        redirect_to users_path
      else
        render 'show'
      end
    end

    def edit_password
    end

    def update_password
      current_user.password_last_updated_by = current_user

      if current_user.update_with_password(update_password_params)
        sign_in current_user, :bypass => true
        redirect_to profile_path
      else
        render 'edit_password'
      end
    end

    def resetting_password
    end

    def reset_password
      @user.password_last_updated_by = current_user

      if @user.update_attributes(reset_password_params)
        redirect_to @user
      else
        render 'resetting_password'
      end
    end

    private

    def create_params
      params.require(:user).permit(*user_attributes)
    end

    def update_params
      updatable_fields = (user_attributes - [:password, :password_confirmation])

      params.require(:user).permit(*updatable_fields)
    end

    def user_attributes
      [
        :last_name,
        :first_name,
        :email,
        :password,
        :password_confirmation,
        :roles_mask
      ]
    end

    def update_password_params
      params.require(:user).permit(:current_password, :password, :password_confirmation)
    end

    def reset_password_params
      params.require(:user).permit(:password, :password_confirmation)
    end
  end
end
