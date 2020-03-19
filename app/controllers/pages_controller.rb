class PagesController < ApplicationController
  def home
    @locations = Location.geocoded #returns flats with coordinates

    @markers = @locations.map do |location|
      {
        lat: location.latitude,
        lng: location.longitude
      }
    end
  end

  def servicios
  end
end
