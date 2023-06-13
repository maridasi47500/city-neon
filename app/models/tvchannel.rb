class Tvchannel < ApplicationRecord
  def lasttenvideos
    videos.lastten
  end
      has_many :channelshavevideo
        has_many :videos, through: :channelshavevideo
end
