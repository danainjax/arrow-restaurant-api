class OrderSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :phone, :sub_total, :tax, :total, :pizzas
end
