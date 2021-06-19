class Order < ApplicationRecord
    belongs_to :customer 
    has_many :items, :through :customers
    
end