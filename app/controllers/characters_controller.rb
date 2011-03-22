class CharactersController < ApplicationController
  expose(:characters) { Character.order("name ASC") } 
  expose(:character)
  expose(:matchups) { Matchup.find_all_by_player(character)  }

end
