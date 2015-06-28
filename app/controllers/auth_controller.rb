class AuthController < ApplicationController
  def login
    
    respond_to do |format|
      format.html
    end    
  end

  def logout
  end
end
