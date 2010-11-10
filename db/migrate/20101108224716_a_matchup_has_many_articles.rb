class AMatchupHasManyArticles < ActiveRecord::Migration
  def self.up
    create_table :articles, :force => true do |t|
      t.text    :body
      t.integer :matchup_id 
      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
