class UsersController < ApplicationController

  def index
    if session[:user] == nil
      redirect_to 'http://www.inatatsu.com/AlleReduce/login.html'
    end
    # session[:user] = "test4"
    @user = User.find_by(u_name:session[:user])
    puts @user.u_name
    render json:@user
  end
end
