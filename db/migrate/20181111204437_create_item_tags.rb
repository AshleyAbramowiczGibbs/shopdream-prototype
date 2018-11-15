class CreateItemTags < ActiveRecord::Migration[5.2]
  def change
    create_table :item_tags do |t|
      t.integer :style_id
      t.string :name

      t.timestamps
    end
  end
end
