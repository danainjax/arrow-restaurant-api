class CreatePizzas < ActiveRecord::Migration[6.1]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.string :description
      t.string :image_url
      t.float :price
      t.integer :quantity
      t.string :special_instructions
      

      t.timestamps
    end
  end
end
