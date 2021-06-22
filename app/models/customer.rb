class Customer < ApplicationRecord
    has_many :orders
    
    has_many :pizzas, through: :pizza_orders
    has_many :pizza_orders

    # validates :email, uniqueness: true
   
    
end
