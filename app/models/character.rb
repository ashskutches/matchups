class Character < ActiveRecord::Base

  def <=>(b)
    self.created_at <=> b.created_at
  end

  def character_list
   ['Ryu','Ken','Adon','Sagat','Chun Li','Blanka','E Honda','Guile','Dhalsim',
    'Zangief','Balrog','Vega','M Bison','T hawk','Cammy','Fei Long','Dee Jay',
    'Akuma','Guy','Rose','Sakura','Dan','Cody','Dudley','Ibuki','Makoto',
    'C Viper','Abel','El Fuerte','Rufus','Seth','Gouken','Juri','Hakan','Evil Ryu','Oni','Yang','Yun']
  end

end
