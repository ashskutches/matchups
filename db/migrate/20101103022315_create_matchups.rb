class CreateMatchups < ActiveRecord::Migration
  def self.up
    create_table :matchups do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :matchups
  end
end
