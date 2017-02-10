class WelcomeController < ApplicationController

  def index
    @ideas = Idea.all
    @users = User.all
  end

end
