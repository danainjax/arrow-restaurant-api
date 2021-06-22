class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.float :sub_total
      t.float :tax
      t.float :total
      t.belongs_to :customer
      

      t.timestamps
    end
  end
end
