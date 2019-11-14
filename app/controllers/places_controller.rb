class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_place, only: :show

  def index
    if check_if_filter
      @places_list = []
      if !params[:query]["address"].empty?
        @address = params[:query]["address"]
        @places_list = Place.near(@address, 1).to_a
      end
      @places_list_tag = filter_by(Tag, "tags")
      @places_list_category = filter_by(Category, "categories")
      if !@places_list_tag.empty? && !@places_list_category.empty?
        if @places_list.empty?
          @places_list = @places_list_category & @places_list_tag
        else
          @places_list = @places_list_category & @places_list_tag & @places_list
        end
        @places_list.flatten!
      elsif @places_list_tag.empty? && @places_list_category.empty?
        @places_list = Place.all if @places_list.empty?
      else
        if @places_list.empty?
          @places_list = @places_list_tag unless @places_list_tag.empty?
          @places_list = @places_list_category unless @places_list_category.empty?
        else
          @places_list = @places_list & @places_list_tag unless @places_list_tag.empty?
          @places_list = @places_list & @places_list_category unless @places_list_category.empty?
        end
      end
      check_if_filled("brunch")
      check_if_filled("terrace")
      check_if_filled("monday_night")
      check_if_filled("sunday_night")
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

  def check_if_filter
    params[:query] && params[:query][:tags].present? && params[:query][:categories].present?
  end

  def filter_by(class_title, plural_name)
    class_title.where(name: query_params.to_h[plural_name].to_a.map { |element| element[0] if element[1] == "1" }.compact).map { |element| element.places }.flatten.uniq
  end

  def query_params
    params.require(:query).permit(tags: {}, categories: {})
  end

  def check_if_filled(element_string)
    if params[:query][element_string] == "1"
      @element_boolean = true
      @places_list = @places_list.select { |place| place[element_string] == @element_boolean }
    end
  end
end
