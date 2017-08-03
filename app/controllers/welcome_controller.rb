  class WelcomeController < ApplicationController

    before_action :authenticate_user!, :except => [:index]

    def index
      @message = "Welcome to my Blog"
      @articles = Article.all
      respond_to do |format|
        format.html
      end
    end
  end
