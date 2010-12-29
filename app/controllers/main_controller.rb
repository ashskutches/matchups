class MainController < ApplicationController
  def show
  end
  
  def home
    @characters = Character.all
    @articles = Article.order("created_at DESC").all
  end
end
