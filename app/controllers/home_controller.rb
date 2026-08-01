class HomeController < ApplicationController
  def index
  @message = "WoW!"
  @articles = Article.all
  end
end
