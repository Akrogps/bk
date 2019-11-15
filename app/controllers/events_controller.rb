class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_event, only: :show

  def index
    @events = Event.all.order("event_date DESC")
  end

  def show
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end
end
