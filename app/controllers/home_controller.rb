class HomeController < ApplicationController
  def index
  @message = "WoW!"
if params[:search].present?
  @articles = Article.where("title LIKE ?", "%#{params[:search]}%")
else
  @articles = Article.all
end
  end
end
