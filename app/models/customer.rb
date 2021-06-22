class Customer < ApplicationRecord
    has_many :orders
    has_many :pizzas
    has_many :pizzas, through: :orders
    
end
