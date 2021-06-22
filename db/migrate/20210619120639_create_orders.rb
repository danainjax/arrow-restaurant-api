class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :sub_total
      t.string :tax
      t.string :total
      t.belongs_to :customer
      

      t.timestamps
    end
  end
end
