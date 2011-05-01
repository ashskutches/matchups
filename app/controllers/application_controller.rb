class ApplicationController < ActionController::Base
  protect_from_forgery
  expose(:feedback) { Feedback.new }
  expose(:randomTips) { Tip.find(:all, :order => "RANDOM()", :limit => 2) } 
end
