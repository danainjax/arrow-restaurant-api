class Topping < ApplicationRecord
    belongs_to :pizza_topping
    belongs_to :pizza, through: pizza_topping
end
