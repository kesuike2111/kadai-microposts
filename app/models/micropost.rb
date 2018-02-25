class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 255}
  
  has_many :favorites
  has_many :fans, through: :favorites, source: :user
  
  # def favor(other_micropost)
  #   unless self == other_micropost
  #     self.favorites.find_or_create_by(micropost_id: other_micropost.id)
  #   end
  # end
  
  # def unfavor(other_micropost)
  #   favorite=self.favorites.find_by(micropost_id: other_micropost.id)
  #   favorite.destroy if favorite
  # end
  
  # def favoring?(other_micropost)
  #   self.favorings.include?(other_micropost)
  # end
end
