class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    render json: @restaurants
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @menus = Menu.where(restaurant_id: params[:id])
    res = [@restaurant,@menus]
    render json: res
  end
end

# @restaurant = Restaurant.find(params[:id])
