class MatchupsController < ApplicationController
  def index
    @articles = Article.order("created_at DESC").all
  end

  def show
    @match    = Matchup.find(params[:id])
    @article  = @match.articles.new
    @articles = @match.articles.order("created_at DESC").all
  end

    def destroy
      @lifespan = Lifespan.find(params[:id])
      @lifespan.destroy
      flash[:success] = "Lifespan deleted."
      redirect_to @species
    end


end
