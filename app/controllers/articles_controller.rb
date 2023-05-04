class ArticlesController < ApplicationController
  def index
    @articles = Article.all #index view retrieves all articles in db
  end

  def show
    @article = Article.find(params[:id]) #get the article with id
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(title: "...", body: "...")

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end
end
