class RenameArticlesToTips < ActiveRecord::Migration
  def self.up
    rename_table('articles', 'tips')
    rename_column(:likes, :article_id, :tip_id)
  end

  def self.down
    rename_column(:likes, :tip_id, :article_id)
    rename_table('tips', 'articles')
  end
end
