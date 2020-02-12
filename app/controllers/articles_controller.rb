class ArticlesController < ApplicationController
  
<<<<<<< HEAD
  before_action :set_article, only: [:edit, :update, :show, :destroy]
  
=======
<<<<<<< HEAD
#   def index

#   end
=======
>>>>>>> 896cea72cd92191b6874095b25c4737e5ec6aaef
  def index
    @articles = Article.all
  end
>>>>>>> 590dc656cf32633e1d656d4437e59b86b7c881a0

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Article created successfully...!"
      #redirect_to @article
      redirect_to article_path(@article)
    else
      render "new"
    end
    # @article.save
    # redirect_to articles_path(@article)
<<<<<<< HEAD
  end

  def show
    @article = Article.find(params[:id])
=======
>>>>>>> 590dc656cf32633e1d656d4437e59b86b7c881a0
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
      flash[:notice] = "Article updated successfully...!"
      redirect_to article_path(@article)
    else
      render "edit"
    end
  end

  def destroy
    #@article = Article.find(params[:id])
    @article.destroy
    flash[:notice] = "Article successfully deleted!"
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