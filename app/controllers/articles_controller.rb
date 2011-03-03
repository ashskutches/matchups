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

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(params[:article])
      flash[:success] = 'Fight was successfully updated.'
      redirect_to matchup_path(@article.matchup.id)
    else
      render :action => "edit"
    end
  end

  def edit
    @match  = Matchup.find(params[:matchup_id])
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to matchups_path, :notice => ">>destroyed<<"
  end

  def like
    @article = Article.find(params[:id])
    @like = Like.new( :user_id => current_user.id, :article_id => params[:id] )
    if @like.save
      @article.like_count = @article.count_likes + 1
      if @article.save
        flash[:notice] = "Successfully liked"
      end
    else
      flash [:notice] => @article.errors
    end
    redirect_to :back
  end
end
