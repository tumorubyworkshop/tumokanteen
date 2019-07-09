class AddProducts < ActiveRecord::Migration[5.2]
  def change
  	create_table :products do |t|
  		t.string :name
  		t.string :description
  		t.string :photo

  		t.integer :price
  	end
  end
end
