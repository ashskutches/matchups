class ApplicationController < ActionController::Base
  protect_from_forgery
  expose(:feedback) { Feedback.new }
end
