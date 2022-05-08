class Clothe < ApplicationRecord
  has_one_attached :image

  validates :season, presence: true
  validates :color, presence: true
  validates :image, presence: true
  validates :category, presence: true
  validates :price, presence: true

  # Railsのmodelとは、「データベースとのやり取りを行うクラスのこと」
  # データベースを取り扱う
  # modelのクラス名は、Memberのように頭が大文字の単数形
  def self.search(search)
    
    if search != ""
      Clothe.where(['season LIKE(?) OR color LIKE(?) OR memo LIKE(?)', 
        "%#{search}%","%#{search}%","%#{search}%"])
    else
      Clothe.all
    end
  end

end
