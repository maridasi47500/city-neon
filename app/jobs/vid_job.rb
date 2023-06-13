class VidJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    @channel= Tvchannel.find args[0]
    @video=args[1]
     ActionCable.server.broadcast("vids_#{@channel.name}", { filename: @video.filename })
  end
end
