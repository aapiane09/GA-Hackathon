class IdeasController < ApplicationController
  after_action :save_my_previous_url, only:[:new]
  before_action :require_login, only: [:new, :create, :edit, :update, :destroy]
  
  def index
    @user = User.find(params[:user_id])
    @events = @user.events
  end

  def show
    @idea = Idea.find_by_id(params[:id])
  end

  before_action :require_login, only: [:new, :create, :edit, :update, :destroy, :upvote]


  def new
    @idea = Idea.new
    @event = Event.find_by_id(params[:id])
  end

  def create
      new_idea = Idea.new(idea_params)
      @event = Event.find_by_id(params[:id])
      new_idea.user = current_user
      new_idea.event = @event
      new_idea.images = idea_params[:images]
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

  def update
    idea_id = params[:id]
    @idea = Idea.find(idea_id)
    if @idea.update_attributes(idea_params)
      flash[:notice] = "Updated successfully."
      @event = Idea.find_by_id(params[:id]).event
      redirect_to event_path(@event)
    else
      @idea.errors.full_messages.each do |message|
        flash[:error] = message
      end
      redirect_to edit_idea_path(@idea)
    end
  end

  def destroy
    idea_id = params[:id]
    @idea = Idea.find(idea_id)
    @event = Idea.find_by_id(params[:id]).event
    @idea.destroy
    redirect_to event_path(@event)
  end

  def upvote
    @idea = Idea.find(params[:id])
    @idea.upvote_by current_user
    redirect_to :back
  end

  private
  def idea_params
    params.require(:idea).permit(:title, :content, {images:[]})
  end

end
