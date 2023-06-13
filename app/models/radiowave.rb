class Radiowave < ApplicationRecord
  def lasttenmusics
    musics.lastten
  end
  has_many :radios
  has_many :musics, through: :radios
end
