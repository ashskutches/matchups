class Matchup < ActiveRecord::Base
  
  belongs_to :player, :class_name => 'Character'
  belongs_to :opponent, :class_name => 'Character'
  has_many   :articles
  
  def all_possible_matchups
    all_chars = Character.all
    all_chars2 = Character.all
    all_chars.each do |player|
      all_chars2.each do |opponent|
        match = Matchup.new(:player => player, :opponent => opponent)
        match.save!
      end
    end
  end

end
