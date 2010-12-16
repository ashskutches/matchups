class ArticlesController < ApplicationController
  def new
    @matchup = Matchup.find_by_id(params[:matchup_id])
    @article = @matchup.articles.new
  end
  
  def create
    @matchup = Matchup.find_by_id(params[:matchup_id])
    @article = @matchup.articles.new(params[:article])
    @article.user = current_user

    if @article.save
      redirect_to(matchup_path(@matchup), :notice => '>>Thanks for the tip!<<')
    else
      render :action => 'new', :notice => @article.errors
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to(match_path(params[:match_id]))
  end
end
