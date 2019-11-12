class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @places = Place.all.order("created_at DESC").limit(9)
    @events = Event.all.order("created_at DESC").limit(2)
  end
end
