class Clothe < ApplicationRecord
  has_one_attached :image

  validates :season, presence: true
  validates :color, presence: true
  validates :image, presence: true
end
