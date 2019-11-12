class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_place, only: :show

  def index
    @places = Place.geocoded.all

    @markers = @places.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { place: place })
      }
    end
  end

  def show
  end

  private

  def set_place
    @place = Place.find(params[:id])
  end
end
