class CreatePizzaOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :pizza_orders do |t|
      t.index [:pizza_id, :order_id]
      t.index [:order_id, :pizza_id]
      t.timestamps
    end
  end
end
