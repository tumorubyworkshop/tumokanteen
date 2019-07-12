class AddCheckoutToCart < ActiveRecord::Migration[5.2]
  def change
    add_column :carts, :checked_out, :boolean, default: false
    add_column :users, :balance, :integer, default: 150000
  end
end
