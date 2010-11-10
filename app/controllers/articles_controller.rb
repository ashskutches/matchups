class ArticlesController < ApplicationController
  def new
    @matchup = Matchup.find_by_id(params[:matchup_id])
    @article = @matchup.articles.new
  end
  
  def create
    @matchup = Matchup.find_by_id(params[:matchup_id])
    @article = @matchup.articles.new(params[:article])

    respond_to do |format|
      if @article.save
        format.html { redirect_to(matchup_path(@matchup, :opponent => @matchup.opponent, :player => @matchup.player), :notice => 'Character was successfully created.') }
        format.xml  { render :xml => @matchup, :status => :created, :location => @matchup }
      else
        format.html { render :action => "new" }
      end
    end
  end

end
