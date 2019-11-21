class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_place, only: :show

  def index
    if check_if_filter
      @places_list = []
      @geocoded_list_empty = false
      list_if_geocoded
      if !@geocoded_list_empty
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

        search_for_booleans
        create_params_hash
      else
        @location_issue = true
        create_params_hash
      end
    else
      @places_list = Place.all
    end

    @places = @places_list.reject { |place| place.latitude.nil? }.sort_by { |place| place.created_at }.reverse

    check_if_open_now
    check_if_closed_soon

    @markers = @places.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { place: place })
      }
    end
  end

  def show
    @opening_hours = @place.opening_hours if @place.opening_hours

    @week_days = {
      1 => "Monday",
      2 => "Tuesday",
      3 => "Wednesday",
      4 => "Thursday",
      5 => "Friday",
      6 => "Saturday",
      7 => "Sunday"
    }
  end

  private

  def set_place
    @place = Place.find(params[:id])
  end

  def list_if_geocoded
    if !params[:query]["address"].empty?
      @address = params[:query]["address"]
      @places_list = Place.near(@address, 1).to_a
      @geocoded_list_empty = true if @places_list.empty?
    end
  end

  def check_if_filter
    params[:query] && params[:query][:tags].present?
  end

  def filter_by(class_title, plural_name)
    class_title.where(name: query_params.to_h[plural_name].to_a.map { |element| element[0] if element[1] == "1" }.compact).map { |element| element.places }.flatten.uniq
  end

  def query_params
    params.require(:query).permit(tags: {}, categories: {})
  end

  def search_for_booleans
    check_if_filled("brunch")
    check_if_filled("terrace")
    check_if_filled("monday_night")
    check_if_filled("sunday_night")
  end

  def check_if_filled(element_string)
    if params[:query][element_string] == "1"
      @element_boolean = true
      @places_list = @places_list.select { |place| place[element_string] == @element_boolean }
    end
  end

  def create_params_hash
    @params_hash = {}
    params[:query][:tags].each { |tag| @params_hash[tag[0]] = params[:query][:tags][tag[0]] }
    if params[:query][:categories]
      params[:query][:categories].each { |categorie| @params_hash[categorie[0]] = params[:query][:categories][categorie[0]] }
    end
    @params_hash["address"] = params[:query]["address"]
    @params_hash["brunch"] = params[:query]["brunch"]
    @params_hash["terrace"] = params[:query]["terrace"]
    @params_hash["monday_night"] = params[:query]["monday_night"]
    @params_hash["sunday_night"] = params[:query]["sunday_night"]
  end

  def check_if_open_now
    @open_now_hash = {}
    @current_day = Date.today.wday
    @current_hour = Time.now.strftime("%H").to_i
    @current_minute = Time.now.strftime("%M").to_i / 60.0
    @current_time = @current_hour + @current_minute

    @places.each do |place|
      if place.opening_hours.where(day_of_week: @current_day)[0]
        opening_info = place.opening_hours.where(day_of_week: @current_day)[0]
        start_hour = opening_info.start_time.strftime("%H").to_i
        end_hour = opening_info.end_time.strftime("%H").to_i
        day_opening_hours = (start_hour..end_hour)
        if day_opening_hours.include?(@current_time)
          @open_now_hash[place] = true
        else
          @open_now_hash[place] = false
        end
      else
        @open_now_hash[place] = false
      end
    end
  end

  def check_if_closed_soon
    @closed_soon_hash = {}

    @places.each do |place|
      if place.opening_hours.where(day_of_week: @current_day)[0]
        opening_info = place.opening_hours.where(day_of_week: @current_day)[0]
        end_hour = opening_info.end_time.strftime("%H").to_i
        if (end_hour - @current_time) <= 1
          @closed_soon_hash[place] = true
        else
          @closed_soon_hash[place] = false
        end
      else
        @closed_soon_hash[place] = false
      end
    end
  end
end
