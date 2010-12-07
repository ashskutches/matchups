class MatchupsController < ApplicationController
  def index
    @matches = Matchup.all
  end

  def show
    @match    = Matchup.find(params[:id])
    @article  = @match.articles.new
  end
end
