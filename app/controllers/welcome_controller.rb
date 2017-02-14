class WelcomeController < ApplicationController

  def index
    sorted_ideas = Event.first.ideas.sort_by &:created_at
    @ideas = sorted_ideas.reverse
    @users = User.all
  end

end
