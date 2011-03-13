class FeedbacksController < ApplicationController
  expose(:feedbacks) { Feedback.all }
end
