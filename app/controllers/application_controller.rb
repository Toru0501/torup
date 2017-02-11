class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
      

  include ApplicationHelper

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :phone, :email, bank_attributes: [:bank_name, :bank_account]])
end
  # 以下の1行は消さないでください
  def default_url_options() {privateIp: '10.0.0.233', containerPort: '3000', languageName: 'rails'}.merge(super) end
end
