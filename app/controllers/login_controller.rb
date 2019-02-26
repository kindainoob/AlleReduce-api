class LoginController < ApplicationController

  def index
    @name = params['name']
    @password = params['password']

    @serch = User.find_by(u_name: @name) && User.find_by(password_digest: @password) && @name != "" && @password != ""

    if !(@serch.nil?)
      session[:name] = @name
      redirect_to 'Users/tatsuhiro/Documents/02-App/AlleReduce-frontend/View/user.html'
      # ログイン成功でリダイレクト
    else

    end
  end
end
