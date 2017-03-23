class SessionsController < ApplicationController

#layout 'login', :only => [:new]

 def new

  end

def create
  user = User.where(username: params[:username]).first
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
	session[:user_type] = user.account_type
    flash[:notice] = "Welcome, you've logged in."
    redirect_to '/home'
  else
    flash[:error] = "Invalid username or password!"
    redirect_to login_path
  end
end

def destroy
  session[:user_id] = nil 
  flash[:notice] = "You've logged out."
  redirect_to '/homepage'
end

end
