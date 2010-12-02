class ChangeCharacterKey < ActiveRecord::Migration
  def self.up
    rename_column :matchups, :player_id, :player
    rename_column :matchups, :opponent_id, :opponent
  end

  def self.down
    rename_column :matchups, :opponent, :opponent_id
    rename_column :matchups, :player, :player_id

  end
end