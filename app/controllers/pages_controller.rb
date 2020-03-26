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

  def contactos
  end

  def path
   data = params[:body]
   subject=params[:subject]
   user = params[:email]
   UserMailer.mail_method(data,user,subject).deliver
  end
end
