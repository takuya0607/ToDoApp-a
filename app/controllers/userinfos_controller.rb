class UserinfosController < ApplicationController
  before_action :set_userinfo, only: [:show, :edit, :update]

  def show
    puts "[show]"
  end

  def edit
  end

  def update
    respond_to do |format|
      if @userinfo.update(userinfo_params)
        format.html {redirect_to root_path ,notice:'was successfully updated.' }
      else
        format.html {render :edit}
      end
    end
  end

  def new
    puts "[new]"
    @userinfo = Userinfo.new()
  end

  def create
    @userinfo = Userinfo.new(userinfo_params)
    @userinfo.User_id = current_user.id
    respond_to do|format|
      if @userinfo.save()
        format.html {redirect_to root_path,notice:'User was successfully created.'}
      else
        format.html {redirect_to :new}
      end
    end
  end
  
  private
  def set_userinfo
    @userinfo = Userinfo.find(params[:id])
  end
  def userinfo_params
    params.require(:userinfo).permit(:name,:profile)
  end
end