class CharactersController < ApplicationController
  expose(:characters) { Character.order("name ASC") } 
  expose(:character)
  expose(:tips) { Tip.order("created_at desc").limit(5) }
  expose(:characterTips) { character.all_tips }

end
