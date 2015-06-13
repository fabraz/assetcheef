class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  private

  def userparams 
    
    endparams.require(:user).permit(:provider, :uid, :name, :oauth_token, :oauth_expires_at) 
  end
  
end