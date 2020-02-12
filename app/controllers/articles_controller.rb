class ArticlesController < ApplicationController
  
<<<<<<< HEAD
#   def index

#   end
=======
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
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end
  
  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:notice] = "Article updated successfully...!"
      redirect_to article_path(@article)
    else
      render "edit"
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    flash[:notice] = "Article successfully deleted!"
    redirect_to articles_path
  end
  
  private
    def article_params
      params.require(:article).permit(:title, :description)
    end

end