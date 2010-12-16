class MatchupsController < ApplicationController
  def index
    @matches = Matchup.all
  end

  def show
    @match    = Matchup.find(params[:id])
    @article  = @match.articles.new
    @articles = @match.articles.find(:all, :order => "created_at DESC")
  end

    def destroy
      @lifespan = Lifespan.find(params[:id])
      @lifespan.destroy
      flash[:success] = "Lifespan deleted."
      redirect_to @species
    end


end
