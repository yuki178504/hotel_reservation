class UsersController < ApplicationController
  def index
    @users = Register.all
  end
end
