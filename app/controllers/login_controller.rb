class LoginController < ApplicationController

  def index
    @name = params['name']
    @password = params['password']

    @serch = User.find_by(u_name: @name) && User.find_by(password_digest: @password) && @name != "" && @password != ""

    if !(@serch.nil?)
      session[:name] = @name
      redirect_to 'https://www.youtube.com/'
      # ログイン成功でリダイレクト
    else

    end
  end
end
