class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def sign_up_params
    params.require(:user).permit(:name, :surname, :email, :password, :password_confirmation, :phone_no, :home_town, :birth_day, :log_time)
  end

  def account_update_params
    params.require(:user).permit(:name, :surname, :email, :password, :password_confirmation, :phone_no, :home_town, :birth_day, :log_time, :current_password)
  end
end
