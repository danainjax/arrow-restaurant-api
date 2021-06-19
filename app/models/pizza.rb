class Pizza < ApplicationRecord
    belongs_to :order
    has_many :toppings, through: pizza_toppings 
end
