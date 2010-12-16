class MatchupsController < ApplicationController
  def index
    @articles = Article.order("created_at ASC").all
  end

  def show
    @match    = Matchup.find(params[:id])
    @article  = @match.articles.new
    @articles = @match.articles.order("created_at DESC").all
  end
end
