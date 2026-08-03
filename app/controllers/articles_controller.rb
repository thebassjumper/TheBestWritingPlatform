class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end
  
  def show
  @article = Article.find(params[:id])
end

  def create
    @article = Article.new(
      title: params[:article][:title],
      body: params[:article][:body]
    )

    if @article.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end
end