class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def dashbaord
    @article = Article.new    
  end

  def create
    @article = Article.new(title: params[:title], image_url: params[:image_url], content: params[:content])
    @article.save
  end
end
