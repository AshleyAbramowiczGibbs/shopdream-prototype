class Style < ApplicationRecord
  belongs_to :user
  has_many :item_tags
  has_one_attached :image
end
