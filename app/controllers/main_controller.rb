class MainController < ApplicationController
  def show
  end
  
  def home
    @characters = Character.all
  end
end
