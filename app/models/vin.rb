class Vin < ApplicationRecord
  validates :producteur, presence: true
  mount_uploader :photo, PhotoUploader


  has_many :order_items
  has_many :reviews, dependent: :destroy

end
