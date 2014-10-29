class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params.require(:event).permit(:date, :location, :description, :capacity, :requires_id))
    if @event.save
      redirect_to root_path, notice: "Event successfully created."
    else
      render "new"
    end
  end

  def show
    @event = Event.find(params[:id])
  end
end
