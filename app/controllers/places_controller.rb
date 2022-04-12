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

    if place.save
      render json: place
    else
      render json: { errors: place.errors.full_messages }, status: 422
    end
  end

  def create
    place = Place.new(
      name: params[:name],
      address: params[:address],
    )
    place.save

    if place.save
      render json: place
    else
      render json: { errors: place.errors.full_messages }, status: 422
    end
  end

  def destroy
    place = Place.find(params[:id])
    place.destroy
    render json: { message: "Place removed!" }
  end
end
