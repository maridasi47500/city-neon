class Video < ApplicationRecord
  def self.lastten
    last(10)
  end
  attr_accessor :mychannel
      has_many :channelshavevideo
              has_many :tvchannels, through: :channelshavevideo
                before_save :saveradio
                            def saveradio
                                  if self.mychannel
                                        tvchannels << Tvchannel.find(self.mychannel)
                                            end
                                    end
                              def filename=(uploaded_io)
                                    myfilename=uploaded_io.original_filename
                                        if myfilename == "blob"
                                                myfilename=uploaded_io.tempfile.path.split("/").last
                                                    end
                                            File.open(Rails.root.join('public', 'uploads', myfilename), 'wb') do |file|
                                                      file.write(uploaded_io.read)
                                                          end
                                                write_attribute(:filename,myfilename)
                                                  end
                                def filename
                                      read_attribute(:filename)
                                        end
end
