class ItemTag < ApplicationRecord
  belongs_to :style
  has_many :potential_purchases
end
