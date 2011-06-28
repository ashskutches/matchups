class RenameAllCharactersWithDots < ActiveRecord::Migration

  def self.up
    tips = Tip.all
    tips.each do |tip|
      if tip.player == "E. Honda"
       tip.player = "E Honda"
      end
      if tip.opponent == "E. Honda"
       tip.opponent = "E Honda"
      end
      if tip.player == "M. Bison"
       tip.player = "M Bison"
      end
      if tip.opponent == "M. Bison"
       tip.opponent = "M Bison"
      end
      if tip.player == "T. Hawk"
       tip.player = "T Hawk"
      end
      if tip.opponent == "T. Hawk"
       tip.opponent = "T Hawk"
      end
      if tip.player == "C. Viper"
       tip.player = "C Viper"
      end
      if tip.opponent == "C. Viper"
       tip.opponent = "C Viper"
      end
      if tip.player == "Chun-Li"
       tip.player = "Chun Li"
      end
      if tip.opponent == "Chun-Li"
       tip.opponent = "Chun Li"
      end
      tip.save
    end
  end

  def self.down
  end

end
