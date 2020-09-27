class RoomChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    puts 'subscribed!!!'
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    puts 'speak:'
    puts data
    ActionCable.server.broadcast 'room_channel', message: data["data"]
  end
end
