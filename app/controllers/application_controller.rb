class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def current_user
   @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
    helper_method :current_user

    def authenticate_user!
      flash[:danger] = "Access Denied"
      redirect_to "/" unless current_user
   end
   def authenticate_admin!
    unless current_user && current_user.admin
      flash[:danger] = "Access Denied"
      redirect_to "/"
    end
   end
   def authenticate_organization!
    unless current_user && current_user.user_organization
      flash[:danger] = "Access Denied"
      redirect_to "/"
    end
   end

end
