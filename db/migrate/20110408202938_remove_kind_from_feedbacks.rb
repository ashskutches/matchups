class RemoveKindFromFeedbacks < ActiveRecord::Migration
  def self.up
    remove_column(:feedbacks, :kind)
  end

  def self.down
    add_column(:feedbacks, :kind)
  end
end
