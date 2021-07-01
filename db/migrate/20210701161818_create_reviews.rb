class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.text :review
      t.string :customer
      t.string :stars

      t.timestamps
    end
  end
end
