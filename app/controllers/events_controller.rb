class EventsController < ApplicationController
  after_action :save_my_previous_url, only:[:new, :show]

  def index
    @events = Event.all
  end

  def show
    @event = Event.friendly.find(params[:id])
    store_location
  end

  def new
    @event = Event.new
  end
end
