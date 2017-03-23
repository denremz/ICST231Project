class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  
  helper_method :current_user, :logged_in? # this makes the helper methods below also available to all our controller actions and all our view templates

  
  def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id] # means that this code will return nil if the user has no session and the part after ||= is only executed if @current_user is nil
  # ||= is for "memoization" to not hit the database too many times.
end

def logged_in?
  !!current_user # !! turns current_user into boolean value
end
  
  def require_user
  if !logged_in?
    flash[:error] = "Login Required!"
    redirect_to '/login'
  end
end
end
