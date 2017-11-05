class RoomsController < ApplicationController
	before_action :authenticate_user!
  def show
  	@messages = Message.all	
  end

  def chat_room
    @messages = Message.where(room_id: params[:id])
  end


end
