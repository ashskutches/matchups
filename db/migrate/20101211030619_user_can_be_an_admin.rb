class UserCanBeAnAdmin < ActiveRecord::Migration
  def self.up
    add_column :users, :admin, :boolean
  end

  def self.down
    remove_column :table_name, :admin
  end
end