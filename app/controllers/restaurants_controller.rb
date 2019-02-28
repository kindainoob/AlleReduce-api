class RestaurantsController < ApplicationController

  def index
    if session[:user] == nil
      redirect_to 'http://www.inatatsu.com/AlleReduce/login.html' and return
    end
    @restaurants = Restaurant.all
    render json: @restaurants
  end

  def show
    if session[:user] == nil
      redirect_to 'http://www.inatatsu.com/AlleReduce/login.html' and return
    end
    @restaurant = Restaurant.find(params[:id])
    @menus = Menu.where(restaurant_id: params[:id])
    # session[:user] = "test4"
    @user = User.find_by(u_name: session[:user])
    res = [@restaurant,@menus,@user]
    render json: res
  end
end
