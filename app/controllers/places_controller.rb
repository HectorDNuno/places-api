class PlacesController < ApplicationController
  def index
    all_places = Place.all
    render json: all_places
  end

  def show
    place = Place.find(params[:id])
    render json: place
  end

  def update
    place = Place.find(params[:id])
    place.name = params[:name] || place.name
    place.address = params[:address] || place.address
    place.save
    render json: place
  end
end
