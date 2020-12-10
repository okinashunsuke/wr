class ConstructionsController < ApplicationController
  before_action :authenticate_user!


  def index
    @users = User.all  
    @constructions = Construction.where(doing:"完工")
  end

  def new
    @users = User.all  
    @constructions = Construction.all
  end

  def create
    @construction = Construction.new(construction_params) 
    if @construction.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @construction = Construction.find(params[:id])
    @user = User.find_by(params[:id])
    @calendars = Calendar.all
    @calendar = Calendar.find_by(params[:id])
  end

  def edit
    @construction = Construction.find(params[:id])
    @user = User.find(@construction.user_id)
  end

  def update
    @construction = Construction.find(params[:id])
    if @construction.update(e_construction_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @construction = Construction.find(params[:id])
    if @construction.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  private

  def construction_params
   params.permit(:name,:place,:price,:user_id,:schedule,:doing)
  end

  def e_construction_params
    params.require(:construction).permit(:name,:place,:price,:user_id,:schedule,:doing, )
   end

  

  # .merge(user_id: current_user.id)
end

