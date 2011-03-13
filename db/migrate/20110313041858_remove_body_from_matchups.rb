class RemoveBodyFromMatchups < ActiveRecord::Migration
  def self.up
    remove_column :matchups, :body
  end

  def self.down
    add_column :matchups, :body
  end
end
