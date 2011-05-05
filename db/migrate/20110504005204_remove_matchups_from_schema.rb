class RemoveMatchupsFromSchema < ActiveRecord::Migration
  def self.up
    add_column :tips, :player, :string
    add_column :tips, :opponent, :string
    matches = Matchup.all
    matches.each do |match|
      match.tips.each do |tip|
        tip.player = match.player.name
        tip.opponent = match.opponent.name
        tip.save
      end
    end
    drop_table :matchups
  end

  def self.down
  end
end