class Character < ActiveRecord::Base

  def <=>(b)
    self.created_at <=> b.created_at
  end

  def all_tips
    character = self
    playerTips =  Tip.find_all_by_player(character.name)
    playerTips.sort! { |a,b| b.created_at <=> a.created_at  }
    opponentTips =  Tip.find_all_by_opponent(character.name)
    opponentTips.sort! { |a,b| b.created_at <=> a.created_at  }
    playerTips = playerTips + opponentTips
    return playerTips
  end

  def character_list

  @list_of_characters = [
    'Ryu','Ken','Adon','Sagat','Chun-Li','Blanka','E. Honda','Guile','Dhalsim',
    'Zangief','Balrog','Vega','M. Bison','T. Hawk','Cammy','Fei Long','Dee Jay',
    'Akuma','Guy','Rose','Sakura','Dan','Cody','Dudley','Ibuki','Makoto',
    'C. Viper','Abel','El Fuerte','Rufus','Seth','Gouken','Juri','Hakan']

    @list_of_characters.each do |character|
      list_char = Character.new(:name => character)
      list_char.save
    end
  end
end
