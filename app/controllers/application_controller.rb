class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    post_images_path
  end




  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:height,:birthday,:age,:introduction,:sex])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name,:height,:birthday,:age,:introduction,:sex])
  end



end
