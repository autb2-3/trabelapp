class RoomsController < ApplicationController
  before_action :set_q, only: [:top, :search]
  
  
  
  def top
  end
  
  def index
    @rooms = Room.where(user_id: current_user.id )
  end
  
  def new
    @room = Room.new
  end
 
  def create
    @room = Room.new(params.require(:room).permit(:room_name, :room_info, :room_price, :room_place, :room_image, :user_id))
      if @room.save
        redirect_to :rooms 
      else
        render "new"
      end
  end
 
  def show
    @room = Room.find(params[:id])
    @reserve = Reserve.new
  end
 
  def edit
  end
  
  def update
  end
 
  def destroy
    @room = Room.find(params[:id])
      @room.destroy
      flash[:notice] = "ユーザーを削除しました"
      redirect_to :rooms
  end
    
  def search
    @results = @q.result
  end
  
  def set_q
    @q = Room.ransack(params[:q])
  end
end
