class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.datetime :date
      t.datetime :time
      t.string :total
      

      t.timestamps
    end
  end
end
