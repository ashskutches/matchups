class CharactersController < ApplicationController
  expose(:characters) { Character.order("name ASC") } 
  expose(:character)
  expose(:matchups) { Matchup.find_all_by_player(character)  }
  expose(:tips) { Tip.order("created_at").limit(5) }
  expose(:characterTips) { character.all_tips }

end
