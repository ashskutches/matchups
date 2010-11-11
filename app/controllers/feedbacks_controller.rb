class FeedbacksController < ApplicationController

  def index
    @feedbacks = Feedback.all
  end
  
  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(params[:feedback])
    if @feedback.save
      flash[:success] = "Thank's for your influential words!"
      redirect_to(root_path) 
    else
      flash[:error] = "Problem saving Feedback!"
      render :action => :new
    end
  end
  
  def show
    @feedback  = Feedback.find(params[:id])
  end
  
  # DELETE /Feedbacks/1
  def destroy
    @feedback = Feedback.find(params[:id])
    @feedback.destroy
    redirect_to(feedbacks_path) 
  end
end