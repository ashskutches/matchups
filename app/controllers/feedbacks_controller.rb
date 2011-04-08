class FeedbacksController < ApplicationController
  expose(:feedback)
  expose(:feedbacks) { Feedback.all }

  def create
    if current_user
      feedback.referer = current_user.name
    end
    if feedback.save
      redirect_to :back, :notice => '>> Thanks for the Feedback! <<'
    else
      redirect_to :back, :notice => feedback.errors
    end
  end

end
