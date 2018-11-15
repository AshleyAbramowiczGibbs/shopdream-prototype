class CreatePotentialPurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :potential_purchases do |t|
      t.integer :item_tag_id
      t.string :image_url
      t.decimal :price
      t.text :description
      t.date :date_purchased

      t.timestamps
    end
  end
end
