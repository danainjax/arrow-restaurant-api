class CreatePizzas < ActiveRecord::Migration[6.1]
  def change
    create_table :pizzas do |t|
      t.string :quantity
      t.string :price
      t.belongs_to :order

      t.timestamps
    end
  end
end
