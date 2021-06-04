class CreateMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :menus do |t|
      t.string :item_name
      t.string :price
      t.string :quantity

      t.timestamps
    end
  end
end
