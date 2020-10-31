class ArticlesController < ApplicationController
  http_basic_authenticate_with name: "algo", password: "123456", only: :dashboard


  def index
    @articles = Article.all
  end

  def dashboard
    @article = Article.new    
  end

  def create
    @article = Article.new(title: params[:title], image_url: params[:image_url], content: params[:content])
    @article.save
  end
end
