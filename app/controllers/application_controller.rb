class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :update_sanitized_params, if: :devise_controller?

    def update_sanitized_params
      devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:email, :user_name, :password, :password_confirmation)}
    end
  
    def after_sign_in_path_for(resource_or_scope)
      root_path
    end

    def after_sign_up_path_for(resource_or_scope)
      after_sign_in_path_for(resource_or_scope)
    end

    def is_login?
      unless current_user 
        flash[:error] = "Please login"
        redirect_to '/'
      end
    end
end