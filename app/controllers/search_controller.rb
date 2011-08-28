class SearchController < ApplicationController
  expose(:character) { params[:player] }
  expose(:characterNames) { Character.character_list.sort! }
  expose(:opponentTips) { Tip.where(:opponent => character) }

  # Takes the input of the "/:search" url and re-directs to the corresponding URL.
  def input
    if params[:player] && params[:opponent]
      redirect_to tip_search_path(params[:player], params[:opponent])
    else
      redirect_to "/"
    end
  end

  # This brings specific matchup tips to the top of the tip/search query
  def tips
    all_tips = Tip.where(:player => params[:player])
    opponent_tips = Tip.where(:player => character, :opponent => params[:opponent])
    @searchTips = opponent_tips + (all_tips - opponent_tips)
  end

end
