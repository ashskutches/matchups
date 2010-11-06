class Character < ActiveRecord::Base
  has_many :matchups, :foreign_key => 'player_id'
  has_many :matchups, :foreign_key => 'opponent_id'
  
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
