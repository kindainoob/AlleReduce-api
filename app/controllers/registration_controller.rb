class RegistrationController < ApplicationController
  def index
    @name = params['name']
    @password = params['password']
    @age = params['age']
    @sex = params['sex']
    @allergy = params['allergys']
    
    User.create(u_name: @name,password_digest: @password,sex: @sex, age: @age, allergy: @allergy.join(','))

  end
end
