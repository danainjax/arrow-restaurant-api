class Order < ApplicationRecord
    has_many :pizza_orders
    has_many :pizzas, through: :pizza_orders
    
    
    # def sub_total
    #     sub = []
    #     @order.pizzas.each do |pizza|
    #        pizza.price = price
    #        pizza.name = name
             
    #         # //add each price into an array, then add them up for the sub_total
    #     end
    # end
    
end
