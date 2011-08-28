class Character < ActiveRecord::Base

  def <=>(b)
    self.created_at <=> b.created_at
  end

  def self.character_list
   [ 'Ryu','Ken','E Honda','Ibuki','Makoto','Dudley','Seth','Gouken','Akuma','Gen','Dan','Sakura','Oni',
     'Yun','Juri','Chun Li','Dhalsim','Abel','C Viper','M Bison','Sagat','Cammy','Dee Jay','Cody','Guy','Hakan','Yang',
    'Evil Ryu','Guile','Blanka','Zangief','Rufus','El Fuerte','Vega','Balrog','Fei Long','T Hawk','Adon','Rose'
    ]
  end

end
