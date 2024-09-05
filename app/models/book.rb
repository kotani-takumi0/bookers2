class Book < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :favorites, dependent: :destroy
  has_many :book_comments, dependent: :destroy
  
  def get_image
    if image.attached?
      image
    else
      'no_image.jpg'
    end
  end
  
  validates :title, presence: true
  validates :body, presence: true
  
  validates :body, length: {maximum: 200 }
  
  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end
  
end
