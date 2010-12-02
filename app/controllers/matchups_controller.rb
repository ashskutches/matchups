class MatchupsController < ApplicationController
  def show
    @match    = Matchup.find(params[:id])
    # @player   = Character.find(params[:player])
    # @opponent = Character.find(params[:opponent])
    # @articles  = @match.articles.all
    # @article  = @match.articles.new
  end
end
