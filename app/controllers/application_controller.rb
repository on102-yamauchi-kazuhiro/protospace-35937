class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_actionのifというオプションを使用している点に注目。
  # これは、値にメソッド名を指定することで、その戻り値がtrueであったときにのみ処理を実行するよう設定するもの

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:profile])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:occupation])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:position])
  end
end