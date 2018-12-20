class ItemTag < ApplicationRecord
  belongs_to :style
  belongs_to :user
  has_many :potential_purchases
end
