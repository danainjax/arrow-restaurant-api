class PizzaSerializer
  include FastJsonapi::ObjectSerializer
 
  attributes :name, :description, :image_url, :price, :quantity, :special_instructions
end
