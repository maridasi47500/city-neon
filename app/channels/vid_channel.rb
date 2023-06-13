class VidChannel < ApplicationCable::Channel
    def subscribed
            stream_from "vids_#{params[:mychannel]}"
              end

      def receive(data)
            ActionCable.server.broadcast("vids_#{params[:mychannel]}",data)
              end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
