class RoomsController < ApplicationController

  def new
  end
  
  def index
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :mew
    end
  end

  private

  def room_params
    params.require(:room).permit(:name, user_ids: [])
  end

end