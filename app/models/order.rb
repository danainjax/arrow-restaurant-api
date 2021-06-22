class Order < ApplicationRecord
    belongs_to :customer 
    has_many :pizzas
    has_many :pizzas, through: :orders
    
    
end
