class ArticlesController < ApplicationController
  before_action :set_article, only: [:update, :edit, :show, :destroy]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create

    @article = Article.new(articles_params)

    if @article.save
      flash[:success] = "Article is successfully created"
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def destroy
    @article.destroy
    flash[:danger] = "Article is successfully deleated"
    redirect_to articles_path
  end

  def update
    if @article.update(articles_params)
      flash[:success] = "Article is successfully edited"
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end

  private
  def set_article
    @article = Article.find(params[:id])
  end
  def articles_params
    params.require(:article).permit(:title, :description)
  end

end
