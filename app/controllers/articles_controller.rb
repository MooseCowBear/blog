class ArticlesController < ApplicationController
  def index
    @articles = Article.all #index view retrieves all articles in db
  end
end
