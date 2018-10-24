class MyarticlesController < ApplicationController
  before_action :set_article, only: [:edit, :update, :show, :destroy]

  def index
    @all_articles = Myarticle.all

  end

  def new
    @myarticle = Myarticle.new
  end

  def edit
    # @myarticle = set_article
  end

  def create
    # render plain: params.inspect
    @myarticle = Myarticle.new(article_params)
    # @myarticle.save
    # render plain: params[:myarticle].inspect
    # redirect_to myarticle_path(@myarticle)

    if @myarticle.save
      flash[:notice] = "Article was successfully created"
      redirect_to myarticle_path(@myarticle)
    else
      flash[:notice] = "Article was NOT successfully created"
      render 'new'
    end
  end

  def update
    # @myarticle = set_article
    if @myarticle.update(article_params)
      flash[:notice] = "Article was successfully updated"
      redirect_to myarticle_path(@myarticle)
    else
      render :edit
    end

  end

  def show
    # @myarticle = set_article
  end

  def destroy
    # @myarticle = set_article
    @myarticle.destroy
    flash[:notice] = "article was deleted"
    redirect_to myarticles_path
  end

  private
  def set_article
    @myarticle = Myarticle.find(params[:id])
  end

  def article_params
    params.require(:myarticle).permit(:title, :description) #need top level key.
  end
end