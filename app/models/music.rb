class Music < ApplicationRecord
  def self.lastten
    last(10)
  end
  attr_accessor :myradio
  before_save :saveradio
    has_many :radios
      has_many :radiowaves, through: :radios
  def saveradio
    if self.myradio
    radiowaves << Radiowave.find(self.myradio)
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
