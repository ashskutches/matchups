class CharactersController < ApplicationController
  expose(:characters) { Character.character_list } 
  expose(:character) { params[:name] }
  expose(:tips) { Tip.order("created_at desc").limit(5) }
  expose(:characterTips) { Tip.where(:player => character) }
  expose(:characterNames) { Character.character_list }
  expose(:opponentTips) { Tip.where(:opponent => character) }

end
