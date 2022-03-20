class Clothe < ApplicationRecord
  has_one_attached :image

  validates :season, presence: true
  validates :color, presence: true
  validates :image, presence: true
  
  def self.search(search)
    
    if search != ""
      Clothe.where('season LIKE(?)', "%#{search}%")
    else
      Clothe.all
    end
  end

end
