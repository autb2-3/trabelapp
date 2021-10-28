class ReservesController < ApplicationController
  def index
    @reserves = Reserve.where(user_id: current_user.id )
    @room = Room.all
  end

  def new
    @reserve = Reserve.new
    @room = Room.find(params[:room_id])
  end
 
  def create
    @reserve = Reserve.new(params.require(:reserve).permit(:start_date, :end_date, :number_people, :user_id , :room_id))
        if @reserve.save
          flash[:notice] = "予約が完了をしました"
          redirect_to :reserves
        else
          render "rooms/show"
        end
  end    
 
  def show
  end
 
  def edit
  end
 
  def update
  end
 
  def destroy
    @reserve = Reserve.find(params[:id])
        @reserve.destroy
        flash[:notice] = "投稿を削除しました"
        redirect_to :reserves
  end
  
end
