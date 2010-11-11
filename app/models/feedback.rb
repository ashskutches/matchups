class Feedback < ActiveRecord::Base
  
  validates_presence_of :body
  validates_presence_of :referer
  validates_presence_of :kind

end
