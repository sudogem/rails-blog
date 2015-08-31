class AuthController < ApplicationController
  def login    
    respond_to do |format|
      format.html
    end    
  end

  def dologin
    username = params[:username]
    password = params[:password]
    u = UserLogin.authenticate(username, password)
    if u
      session[:user] = u
      redirect_to root_path
    else
      flash[:notice] = 'Invalid username/password'
      render :action => 'login'
    end
  end
  
  def logout
  end
end
