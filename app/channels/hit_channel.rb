class HitChannel < ApplicationCable::Channel
  def subscribed
      stream_from "hits_#{params[:radio]}"
  end

  def receive(data)
    ActionCable.server.broadcast("hits_#{params[:radio]}",data)
  end
  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
