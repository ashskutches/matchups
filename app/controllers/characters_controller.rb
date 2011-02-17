class CharactersController < ApplicationController
  def index
    @characters = Character.all
    @articles = Article.order("created_at DESC").all(:limit => 5)
  end

  def show
    @character = Character.find(params[:id])
    @matches   = Matchup.find_all_by_player(@character.id)
    @articles  = Article.find_all_by_user_id(@character.id) 
  end

  def new
    @character = Character.new

  end

  def edit
    @character = Character.find(params[:id])
  end

  def create
    @character = Character.new(params[:character])

    respond_to do |format|
      if @character.save
        format.html { redirect_to(characters_path, :notice => 'Character was successfully created.') }
        format.xml  { render :xml => @character, :status => :created, :location => @character }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @character.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @character = Character.find(params[:id])

    respond_to do |format|
      if @character.update_attributes(params[:character])
        format.html { redirect_to(@character, :notice => 'Character was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @character.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to(characters_path)
  end
end
