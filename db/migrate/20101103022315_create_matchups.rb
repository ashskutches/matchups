class CreateMatchups < ActiveRecord::Migration
  def self.up
    create_table :matchups do |t|
      t.integer :player_id
      t.integer :opponent_id
      t.text :body
      t.timestamps
    end
  end

  def self.down
    drop_table :matchups
  end
end
