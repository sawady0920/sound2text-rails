class RoomsController < ApplicationController
  def show
    puts 'HERE!!!!!'
    @messages = Message.all
    render :json => @messages
  end
end
