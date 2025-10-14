class PrivacyPolicyController < ApplicationController
  def index
    @message = "Welcome to my Blog"
    @articles = Article.all
    respond_to do |format|
      format.html
    end
  end
end
