class Radiowave < ApplicationRecord
  has_many :radios
  has_many :musics, through: :radios
end
