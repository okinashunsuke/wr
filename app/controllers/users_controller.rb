class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all  
    @constructions = Construction.where(doing:"施工中")
    # @user = User.find_by(params[:id])
    # @construction = Construction.find_by(params[:id])   
    # @calendar = Calendar.find_by(params[:id])
    # @calendars = Calendar.all 
  end

  def show
    @user = User.find(params[:id])
    @construction = Construction.where(user_id:@user.id)
    @calendar = Calendar.find_by(params[:id])
    @calendars = Calendar.all   
  end

  def destroy
  end

end


 