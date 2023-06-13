class HitJob < ApplicationJob
  queue_as :default

  def perform(*args)
    @radio=Radiowave.find(args[0])
    @music=args[1]
    ActionCable.server.broadcast("hits_#{@radio.name}", { filename: @music.filename })
  end
end
