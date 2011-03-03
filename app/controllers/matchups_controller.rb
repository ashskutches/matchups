class MatchupsController < ApplicationController

  def index
    @articles = Article.order("created_at DESC").all
  end

  def show
    @match    = Matchup.find(params[:id])
    @matches   = Matchup.find_all_by_player(@match.player.id)
    @article  = @match.articles.new
    @articles = @match.articles.order("created_at DESC").all
    if current_user
      @likes = Like.where( :user_id => current_user.id )
    end
  end

    def destroy
      @lifespan = Lifespan.find(params[:id])
      @lifespan.destroy
      flash[:success] = "Lifespan deleted."
      redirect_to @species
    end


end
