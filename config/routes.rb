Rails.application.routes.draw do
  resources :pizza_orders
  resources :pizzas
  resources :orders
  resources :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
