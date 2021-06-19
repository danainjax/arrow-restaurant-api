class CreateToppings < ActiveRecord::Migration[6.1]
  def change
    create_table :toppings do |t|
      t.string :name
      t.string :price
      t.string :image_url
      t.string :quantity
      t.integer :pizza_topping

      t.timestamps
    end
  end
end
