class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_place, only: :show

  def index
    if check_if_filter
      @places_list = []
      @places_list_tag = filter_by(Tag, "tags")
      @places_list_category = filter_by(Category, "categories")
      if !@places_list_tag.empty? && !@places_list_category.empty?
        @places_list = @places_list_category & @places_list_tag
        @places_list.flatten!
      else
        @places_list_tag.map { |place| @places_list << place }
        @places_list_category.map { |place| @places_list << place }
      end
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

  def check_if_filter
    params[:query] && params[:query][:tags].present? && params[:query][:categories].present?
  end

  def filter_by(class_title, plural_name)
    class_title.where(name: query_params.to_h[plural_name].to_a.map { |element| element[0] if element[1] == "1" }.compact).map { |element| element.places }.flatten.uniq
  end

  def query_params
    params.require(:query).permit(tags: {}, categories: {})
  end

  def set_place
    @place = Place.find(params[:id])
  end
end
