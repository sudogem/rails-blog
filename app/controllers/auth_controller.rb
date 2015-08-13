class AuthController < ApplicationController
  def login
    
    respond_to do |format|
      format.html
    end    
  end

  def dologin
  end
  
  def logout
  end
end
