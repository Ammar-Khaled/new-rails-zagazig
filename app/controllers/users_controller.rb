class UsersController < ApplicationController
  def index
    @users = ["Ammar", "Khaled", "Abdelnoor", "Ibraheem"]
  end
end