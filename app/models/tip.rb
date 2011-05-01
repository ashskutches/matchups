class Tip < ActiveRecord::Base
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
