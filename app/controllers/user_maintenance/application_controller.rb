module UserMaintenance
  class ApplicationController < ActionController::Base
    protect_from_forgery :with => :exception

    check_authorization :unless => :devise_controller?

    rescue_from CanCan::AccessDenied do |exception|
      redirect_to main_app.root_url, :alert => exception.message
    end

    private

    def after_sign_in_path_for(resource)
      if resource != resource.password_last_updated_by
        edit_password_profile_path
      else
        request.env['omniauth.origin'] || stored_location_for(resource) || main_app.root_path
      end
    end

    def permitted_params
      @permitted_params = PermittedParams.new(params)
    end

    helper_method :permitted_params
  end
end
