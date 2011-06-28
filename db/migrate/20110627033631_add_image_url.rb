class AddImageUrl < ActiveRecord::Migration
  def self.up
    add_column :blogs, :image_url, :string
  end

  def self.down
    remove_column :blogs, :image_url
  end
end