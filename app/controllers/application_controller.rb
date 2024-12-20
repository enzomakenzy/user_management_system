class ApplicationController < ActionController::Base
  include Pundit::Authorization
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :acess, department_ids: []])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :acess, department_ids: []])
  end

end
