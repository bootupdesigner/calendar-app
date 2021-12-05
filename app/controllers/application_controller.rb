class ApplicationController < ActionController::Base

    before_action :authenticate_user!

    helper_method :user_signed_in?, :current_user, :user_session


    def after_sign_in_path_for(resource)
      root_path
    end
      
    def after_sign_out_path_for(resource)
      root_path
    end

    protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end
end
