BUILD NOTES

For solving:
-[ ] Add validation so dupe customers cannot be saved to db
-[X] Why are before_actions not being set?, cannot use before_action when callback does a render, we are rendering json so my thought is have to write the set object id code in the method, asked in slack to confirm
-[ ] Why does postgres not allow find_by?

1. Test models and associations to get to a working back end
Streamlined to 3 models, Pizza, Order, and Pizza_Order as a join table that will allow me to add multiple pizzas to an order.

MVP BACKEND
-[X] Pizza - test to see if can create seed data

-[X] Order - test to see if can create an order

-[X] PizzaOrder - test to see if can create an order associated to a customer 

-[ ] Work out logic to calculate sub total, tax, and total for an order. (Build a method)
-[ ] Build an order with multiple pizzas
-[ ] Build pizzas and seed database with 10 pizzas to start with which will serve as the menu



