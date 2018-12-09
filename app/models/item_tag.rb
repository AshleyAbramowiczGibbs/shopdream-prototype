class ItemTag < ApplicationRecord
  belongs_to :style, optional: true
  belongs_to :user
  has_many :potential_purchases
end
