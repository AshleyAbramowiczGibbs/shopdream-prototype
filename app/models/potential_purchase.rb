class PotentialPurchase < ApplicationRecord
  belongs_to :item_tag
  belongs_to :user
end
