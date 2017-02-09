class WelcomeController < ApplicationController

  def index
    @ideas = Idea.all
  end

end
