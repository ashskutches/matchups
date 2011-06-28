class Tip < ActiveRecord::Base
 validates_presence_of :body
 belongs_to :user
 belongs_to :matchup
 has_many :likes


 def count_likes
   unless self.like_count
    return 0
   else
     self.like_count
   end
 end


end
