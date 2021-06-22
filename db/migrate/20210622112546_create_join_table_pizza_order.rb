class CreateJoinTablePizzaOrder < ActiveRecord::Migration[6.1]
  def change
    create_join_table :pizzas, :orders do |t|
      # t.index [:pizza_id, :order_id]
      # t.index [:order_id, :pizza_id]
    end
  end
end
