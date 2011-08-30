class TipsController < ApplicationController
  expose(:tips) { Tip.all }
  expose(:matchup)
  expose(:tip)
  expose(:characterTips) { Tip.where(:player => tip.player, :opponent => tip.opponent).reject { |x| x == tip } }
  expose(:characterNames) { Character.character_list.sort! }

  def new
    session[:return_to] = request.referer
  end

  def create
    if current_user
      tip.user_id = current_user.id
      if tip.save
        redirect_to session[:return_to], :notice => 'Thanks for the tip.'
      else
        render :action => 'new', :notice => tip.errors
      end
    else
      redirect_to session[:return_to], :notice => 'You have to be logged in to add tips!'
    end
  end

  def update
    if tip.update_attributes(params[:tip])
      flash[:success] = 'Tip updated'
      redirect_to matchup_path(tip.matchup)
    else
      render :action => "edit"
    end
  end

  def destroy
    tip.destroy
    redirect_to :back
  end

end
