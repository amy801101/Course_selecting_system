class CreateShoppingLists < ActiveRecord::Migration
  def change
    create_table :shopping_lists do |t|
      t.integer :s_id
      t.integer :c_id

      t.timestamps
    end
  end
end
