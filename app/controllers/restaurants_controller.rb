class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    render json: @restaurants
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @menus = Menu.where(restaurant_id: params[:id])
    session[:user] = "test4"
    @user = User.find_by(u_name: session[:user])
    res = [@restaurant,@menus,@user]
    render json: res
  end
end

# @restaurant = Restaurant.find(params[:id])
