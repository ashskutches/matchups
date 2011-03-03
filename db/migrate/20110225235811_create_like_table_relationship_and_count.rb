class CreateLikeTableRelationshipAndCount < ActiveRecord::Migration
  def self.up
    create_table :likes, :force => true do |t|
      t.integer :user_id
      t.integer :article_id
      t.timestamps
    end
    
    add_column :articles, :like_count, :integer, :default => 0
  end

  def self.down
    remove_column :articles, :like_count
    drop_table :likes
  end
end
