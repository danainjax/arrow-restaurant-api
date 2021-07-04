class AddCommentsToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :comments, :string
  end
end
