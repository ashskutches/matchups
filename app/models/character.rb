class Character < ActiveRecord::Base
  has_many :matchups, :foreign_key => 'player_id'
  has_many :matchups, :foreign_key => 'opponent_id'

  def <=>(b)
    self.created_at <=> b.created_at
  end

  def all_tips
    matchups =  Matchup.find_all_by_player(self)
      all_ma_tips = []
      matchups.each do |match|
        match.tips.each do |tip|
          all_ma_tips << tip
        end
      end
      all_ma_tips.sort! { |a,b| b.created_at <=> a.created_at  }
      return all_ma_tips
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
