class ArticlesController < ApplicationController
  def index
    @articles = Article.all #index view retrieves all articles in db
  end

  def show
    @article = Article.find(params[:id]) #get the article with id
  end
end
