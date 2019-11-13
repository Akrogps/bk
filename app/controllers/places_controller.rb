class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_place, only: :show

  def index
    if params[:query] && params[:query][:tags].present?
      @places_list = Tag.where(name: params[:query][:tags]).map { |tag| tag.places }.flatten.uniq
    else
      @places_list = Place.all
    end

    @places = @places_list.reject { |place| place.latitude.nil? }

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
