class ArticlesController < ApplicationController
  def index
    @articles = Article.group_by
  end
end
