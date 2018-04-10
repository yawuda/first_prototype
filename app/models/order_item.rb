class OrderItem < ApplicationRecord
  belongs_to :vin
  belongs_to :order
end
