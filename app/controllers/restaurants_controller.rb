class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    render json: @restaurants
  end

  def show
    @menus = Menu.where(restaurant_id: params[:id])
    render json: @menus
  end
end

# @restaurant = Restaurant.find(params[:id])
