class ApplicationController < ActionController::Base
  #application controller は絶対に実行される
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?#上書きを許可する

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :image])#個々に書いてるやつを許可する感じ
  end
end
