class Matchup < ActiveRecord::Base
  
  belongs_to :player, :class_name => 'Character'
  belongs_to :opponent, :class_name => 'Character'
  
  def all_possible_matchups
    all_chars = Character.all
    all_chars.each do |player|
      all_chars.each do |opponent|
        match = Matchup.new(:player => player, :opponent => opponent)
        match.save!
      end
    end
  end
end
