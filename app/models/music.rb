class Music < ApplicationRecord
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
    File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
        file.write(uploaded_io.read)
    end
    write_attribute(:filename,uploaded_io.original_filename)
  end
  def filename
    read_attribute(:filename)
  end
end
