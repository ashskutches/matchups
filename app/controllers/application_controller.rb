class ApplicationController < ActionController::Base
  protect_from_forgery
  def application
    @characters = Character.all
  end
  
  def layout
    @characters = Character.all
  end
end
