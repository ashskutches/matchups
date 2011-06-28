class Character < ActiveRecord::Base

  def <=>(b)
    self.created_at <=> b.created_at
  end

  def character_list
   ['Ryu','Ken','Adon','Sagat','Chun_Li','Blanka','E_Honda','Guile','Dhalsim',
    'Zangief','Balrog','Vega','M_Bison','T_hawk','Cammy','Fei_Long','Dee_Jay',
    'Akuma','Guy','Rose','Sakura','Dan','Cody','Dudley','Ibuki','Makoto',
    'C_Viper','Abel','El_Fuerte','Rufus','Seth','Gouken','Juri','Hakan','Evil Ryu','Oni','Yang','Yun']
  end

end
