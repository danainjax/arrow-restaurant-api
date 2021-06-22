class CreatePizzaOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :pizza_orders do |t|
      t.belongs_to :pizza
      t.belongs_to :order
      t.timestamps
    end
  end
end
