class FeedbacksController < ApplicationController
  expose(:feedback)
  expose(:feedbacks) { Feedback.all }
  expose(:randomTips) { Tip.find(:all, :order => "RANDOM()", :limit => 2) } 

  def create
    if current_user
      feedback.referer = current_user.name
    else
      feedback.referer = "Guest"
    end
    if feedback.save
      redirect_to :back, :notice => '>> Thanks for the Feedback! <<'
    else
      redirect_to :back, :notice => feedback.errors
    end
  end

end
