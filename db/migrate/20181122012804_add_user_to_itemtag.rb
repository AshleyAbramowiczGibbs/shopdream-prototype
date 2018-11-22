class AddUserToItemtag < ActiveRecord::Migration[5.2]
  def change
    add_column :item_tags, :user_id, :integer
  end
end
