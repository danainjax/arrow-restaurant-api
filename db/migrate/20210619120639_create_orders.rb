class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.float :sub_total
      t.float :tax
      t.float :total
      
      

      t.timestamps
    end
  end
end
