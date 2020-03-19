class PagesController < ApplicationController
  def home
    @locations = Location.geocoded #returns flats with coordinates

    @markers = @flats.map do |location|
      {
        lat: location.latitude,
        lng: location.longitude
      }
  end

  def servicios
  end
end
