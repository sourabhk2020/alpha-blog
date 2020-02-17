class ArticlesController < ApplicationController
  
  before_action :set_article, only: [:edit, :update, :show, :destroy]
  
  def index
    #@articles = Article.all
    @articles = Article.paginate(page: params[:page], per_page: 5)
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user = User.first
    if @article.save
      flash[:success] = "Article created successfully...!"
      #redirect_to @article
      redirect_to article_path(@article)
    else
      render "new"
    end
    # @article.save
    # redirect_to articles_path(@article)
  end

  def show
    #@article = Article.find(params[:id])
  end

  def edit
    #@article = Article.find(params[:id])
  end
  
  def update
    #@article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:success] = "Article updated successfully...!"
      redirect_to article_path(@article)
    else
      render "edit"
    end
  end

  def destroy
    #@article = Article.find(params[:id])
    @article.destroy
    flash[:danger] = "Article successfully deleted!"
    redirect_to articles_path
  end
  
  private
    def set_article
      @article = Article.find(params[:id])
    end
  
    def article_params
      params.require(:article).permit(:title, :article_type, :description)
    end

end