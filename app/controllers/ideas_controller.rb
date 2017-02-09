class IdeasController < ApplicationController

  def index
    @event = Event.find_by_id(params[:id])
    @ideas = @event.ideas
  end

  def show
    @idea = Idea.find_by_id(params[:id])
  end

  def new
    @idea = Idea.new
  end

  def create
    # new_idea = Idea.new(idea_params)
    # @event = Event.find_by_id(params[:event_id])
    # new_idea.user = current_user
    # @idea = Idea.create(idea_params)
    # redirect_to idea_path
  end

  def edit
    idea_id = params[:id]
    @idea = Idea.find_by_id(idea_id)
    #render :edit
  end

  def create
  end
end
