class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
      
  def show
    #@id = params[:id]
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(
      title: params[:article][:title],
      body: params[:article][:body]
      )
    @article.save
    redirect_to article_path(@article)
  end
end
