class TipsController < ApplicationController
  expose(:tips) { Tip.all }
  expose(:matchup)
  expose(:tip)

  def create
    tip.matchup_id = matchup.id
    tip.user = current_user
    if tip.save
      redirect_to(matchup_path(matchup), :notice => '>>Thanks for the tip!<<')
    else
      render :action => 'new', :notice => tip.errors
    end
  end

  def destroy
    tip.destroy
    redirect_to :back
  end

end
