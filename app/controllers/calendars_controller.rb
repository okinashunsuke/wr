class CalendarsController < ApplicationController

  before_action :set_calendar, only: [:show,:edit,:update,:destroy]

  def index
    @user = User.find(params[:id])
    @calendars = Calendar.all
  end

  def show
    @user = User.find(params[:id])
    @construction = Construction.where(user_id:@user.id)
    @calendars = Calendar.all    
  end

  def new
  end

  def edit
  end

  def create
    @calendar = Calendar.new(calendar_params)
      if @calendar.save
          redirect_to root_path
      else
        render :new
      end
  end

  def update
      if @calendar.update(e_calendar_params)
        redirect_to root_path
      else
        render :edit
      end 
  end

  def destroy
    if @calendar.destroy
      redirect_to root_path
    else
      render :edit
    end
  end


  private
  def set_calendar
    @calendar = Calendar.find(params[:id])
  end

  def e_calendar_params
    params.require(:calendar).permit(:construction_id,:user_id,:const_type,:company,:n_o_p,:day,:calendar_id)
  end

  def calendar_params
    params.permit(:construction_id,:user_id,:const_type,:company,:n_o_p,:day,:calendar_id)
  end

end
