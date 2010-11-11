class CreateFeedback < ActiveRecord::Migration
  def self.up
    create_table :feedbacks, :force => true do |t|
      t.text    :body   , :null => false
      t.string  :referer, :null => false
      t.string  :kind   , :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :feedbacks
  end
end
