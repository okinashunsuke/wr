class CalendarsController < ApplicationController

  def index
    @user = User.find(params[:id])
    @calendars = Calendar.all
  end

  def show
    @user = User.find(params[:id])
    @construction = Construction.where(user_id:@user.id)
    @calendar = Calendar.find_by(params[:id])
    @calendars = Calendar.all    
  end


  def new
  end

  def edit
    @calendar = Calendar.find(params[:id])
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
    @calendar = Calendar.find(params[:id])
      if @calendar.update(e_calendar_params)
        redirect_to root_path
      else
        render :edit
      end
 
  end

  def destroy
    @calendar = Calendar.find(params[:id])
    if @calendar.destroy
      redirect_to root_path
    else
      render :edit
    end
  end

  private
   
    def e_calendar_params
      params.require(:calendar).permit(:construction_id,:user_id,:const_type,:company,:n_o_p,:day,:calendar_id)
    end

    def calendar_params
      params.permit(:construction_id,:user_id,:const_type,:company,:n_o_p,:day,:calendar_id)
    end
end
