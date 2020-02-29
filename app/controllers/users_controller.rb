class UsersController < ApplicationController
  before_action :authenticate_user!, only: [ :index]
  def index
    if user_signed_in?
      @user = User.find(current_user.id)
      puts "@user.Userinfo#{@user.userinfo}"
    end
  end
end