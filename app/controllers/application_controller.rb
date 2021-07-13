class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    if current_admin
      flash[:notice] = "ログインに成功しました"
      new_post_path
    else
      flash[:notice] = "新規登録に成功しました"
      new_post_path
    end
  end
  
  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end 
end
