class WelcomeController < ApplicationController

  def index
    sorted_ideas = Event.first.ideas.sort_by &:cached_votes_up
    @ideas = sorted_ideas.reverse
    @users = User.all
  end

end
