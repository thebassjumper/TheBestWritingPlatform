	class ArticlesController < ApplicationController
	
	before_action :set_article, only: [:show, :edit, :update, :destroy]

	  def new
		@article = Article.new
	  end

	  def show
		
	  end

	  def create
		@article = Article.new(article_params)

		if @article.save
redirect_to root_path, notice: "Article successfully created."
		else
		  render :new, status: :unprocessable_entity
		end
	  end

	  def edit
		
	  end
	  
	  def destroy
	  
	  @article.destroy

	  redirect_to root_path, notice: "Article successfully deleted."
	end

	  def update
		

		if @article = Article.update(article_params)
redirect_to @article, notice: "Article successfully updated."
		else
		  render :edit, status: :unprocessable_entity
		end
	  end
private

def set_article
  @article = Article.find(params[:id])
end
def article_params
  params.require(:article).permit(:title, :body)
end
	end