class TipsController < ApplicationController
  expose(:tips) { Tip.all }
  expose(:matchup)
  expose(:tip)
  expose(:characterNames) { Character.all.collect { |character| character.name } }

  def create
    if current_user
      tip.user_id = current_user.id
      if tip.save
        redirect_to root_path, :notice => 'Thanks for the tip.'
      else
        render :action => 'new', :notice => tip.errors
      end
    else
      redirect_to :back, :notice => 'You have to be logged into add a tip!'
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
