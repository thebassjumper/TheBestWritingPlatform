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
redirect_to root_path, notice: "Article successfully created."
		else
		  render :new, status: :unprocessable_entity
		end
	  end

	  def edit
		@article = Article.find(params[:id])
	  end
	  
	  def destroy
	  @article = Article.find(params[:id])
	  @article.destroy

	  redirect_to root_path, notice: "Article successfully deleted."
	end

	  def update
		@article = Article.find(params[:id])

		if @article.update(
		  title: params[:article][:title],
		  body: params[:article][:body]
		)
redirect_to @article, notice: "Article successfully updated."
		else
		  render :edit, status: :unprocessable_entity
		end
	  end

	end