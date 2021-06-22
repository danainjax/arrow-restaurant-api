class Pizza < ApplicationRecord
    has_many :pizza_orders
    has_many :orders, through: :pizza_orders
end
