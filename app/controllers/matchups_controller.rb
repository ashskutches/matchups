class MatchupsController < ApplicationController
  def index
    @matches = Matchup.all
  end

  def show
    @match    = Matchup.find(params[:id])
    @article  = @match.articles.new
    @articles = @match.articles.find(:all, :order => "created_at DESC")
  end
end
