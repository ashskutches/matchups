class MatchupsController < ApplicationController
  def show
    @match    = Matchup.find(params[:id])
    @article  = @match.articles.new
  end
end
