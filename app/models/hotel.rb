class Hotel < ApplicationRecord
  has_one_attached :image
  
  validates :user_id, {presence: true}
end
