class RoomsController < ApplicationController
  def show
  	@messages = Messagle.all
  end
end
