class ArticlesController < ApplicationController
  def index
    @articles = Article.find_each
  end

  def new
    @article = Article.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    binding.pry
    @article = Article.new(article_params)
    if @article.save
      redirect_to articles_path
    else
      render new_article_path
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    @article.save
    redirect_to articles_path
  end

  def show
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
     @article.destroy
      redirect_to articles_path
  end

   def search
        @articles = Article.search(params[:search].split("=").last)
        respond_to :js
    end

  private

  def article_params
    params.require(:article).permit!
  end
end
