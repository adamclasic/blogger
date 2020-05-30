class ArticlesController < ApplicationController
  include ArticlesHelper
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
    @article = Article.new(article_params)
    @article.save
    flash.notice = "Article '#{@article.title}' created!"
    redirect_to article_path(@article)
  end

  def destroy
    Article.find(params[:id]).destroy
    flash.notice = "Article removed!"
    redirect_to articles_path
  end

  def edit
    @article = Article.find(params[:id])
    @article.save
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    flash.notice = "Article '#{@article.title}' Updated!"
    redirect_to article_path(@article)
  end
end
