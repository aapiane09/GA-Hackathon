class EventsUsersController < ApplicationController

  def build
    @event = Event.find_by_id(params[:event_id])
    @user = current_user
    @event.users << @user
  end

end
