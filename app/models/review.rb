class Review < ApplicationRecord
  belongs_to :vin
  validates :content, length: { minimum: 20 }
end
