class Clothe < ApplicationRecord
  has_one_attached :image

  validates :season, presence: true
  validates :color, presence: true
  validates :image, presence: true
  
  def self.search(search)
    
    if search != ""
      Clothe.where(['season LIKE(?) OR color LIKE(?) OR memo LIKE(?) OR date LIKE(?)', 
        "%#{search}%","%#{search}%","%#{search}%","%#{search}%"])
    else
      Clothe.all
    end
  end

end
