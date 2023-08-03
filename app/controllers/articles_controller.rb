class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = Article.new(permit_params)
    if @article.save
      flash[:notice] = "ARTICLE CREATED!"
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def update

    if @article.update(permit_params)
      flash[:notice] = "ARTICLE UPDATED"
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article.destroy
    flash[:notice] = "ARTICLE DELETED!"
    redirect_to articles_path
  end






  
  private #PRIVATE means that any code below this line is only usable by this Class/Controller

  def set_article
    @article = Article.find(params[:id]) #GET THE ARTICLE WITH THE SPECIFIC ID
  end

  def permit_params
    params.require(:article).permit(:title, :description) #ALLOW THE ACCESS OF THESES ATRIBUTES
  end

end

