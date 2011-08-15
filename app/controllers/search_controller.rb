class SearchController < ApplicationController
  expose(:character) { params[:player] }
  expose(:characterNames) { Character.character_list }
  expose(:opponentTips) { Tip.where(:opponent => character) }

  # Takes the input of the "/:search" url and re-directs to the corresponding URL.
  def input
    if params[:player] && params[:opponent]
      player = params[:player].gsub(/ /,'%20')
      opponent = params[:opponent].gsub(/ /,'%20')
      redirect_to "/characters/#{player}/vs#{opponent}"
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
