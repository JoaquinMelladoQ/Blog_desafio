class ArticlesController < ApplicationController
  def index
    @articles = Article.group_by
  end

  def dashbaord
    @article = Article.new    
  end

  def create
    @article = Article.create(title: params[:title], image_url: params[:image_url], content: params[:content])
  end

end
