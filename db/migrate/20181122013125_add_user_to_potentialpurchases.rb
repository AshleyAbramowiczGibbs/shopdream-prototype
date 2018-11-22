class AddUserToPotentialpurchases < ActiveRecord::Migration[5.2]
  def change
    add_column :potential_purchases, :user_id, :integer
  end
end
