class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params.require(:event).permit(:date, :location, :description, :capacity, :requires_id))
    if @client.save
      redirect_to @client
    else
      render "new"
    end
  end
end
