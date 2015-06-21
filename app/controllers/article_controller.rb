
  class ArticleController < ApplicationController
    def add
      respond_to do |format|
        format.html # add.html.erb
      end      
    end

    def edit
      @article = Article.find_by_id params[:id]
      Rails.logger.debug params.inspect
      respond_to do |format|
        format.html # add.html.erb
      end    
    end

    def save
      logger.debug "save"
      logger.debug params.inspect
      
      @article = Article.create(:title=>params[:title], :body=>params[:body])
      respond_to do |format|
        if @article.save
          format.html { redirect_to article_add_path, alert: 'Successfully save.' }
        else
          format.html { redirect_to article_add_path, alert: 'Message failed to save.' }
        end
      end
    end
    
    
    def view
    end
    
    def delete
    end
  end


