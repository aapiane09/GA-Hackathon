class IdeasController < ApplicationController

  # def index
  #   @event = Event.find_by_id(params[:id])
  #   @ideas = @event.ideas
  # end

  def index
    @user = User.find(params[:user_id])
    @events = @user.events
  end

  def show
    @idea = Idea.find_by_id(params[:id])
  end

  def new
    @idea = Idea.new
    @event = Event.find_by_id(params[:id])
  end

  def create
      new_idea = Idea.new(idea_params)
      @event = Event.find_by_id(params[:id])
      new_idea.user = current_user
      new_idea.event = @event
      @idea = new_idea.save
      if @idea
        redirect_to @event
      else
        new_idea.errors.full_messages.each do |message|
          flash[:error] = message
        end
         redirect_to new_idea_path
       end

  end

  def edit
    idea_id = params[:id]
    @idea = Idea.find_by_id(idea_id)
    #render :edit
  end

  private
  def idea_params
    params.require(:idea).permit(:title, :content)
  end

end
