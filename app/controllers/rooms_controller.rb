class RoomsController < ApplicationController
	before_action :authenticate_user!
  def show
  	@messages = Message.all
  	@message = Message.new
  end

def create
    message = Message.new(message_params)
    message.user = current_user
    if message.save
      ActionCable.server.broadcast 'messages',
        message: message.content,
        user: current_user
      head :ok
    end
  end

  private

    def message_params
      params.require(:message).permit(:content)
    end

end
