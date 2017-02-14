class EventsUsersController < ApplicationController

  before_action :require_login, only: [:build]

  def build
    @event = Event.find_by(params[:event_name])
    @user = current_user
    @event.users << @user
    redirect_to :back
  end

end
