# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pizza.create(name: "Pepperoni", description: "Large Pepperoni Pizza", image_url: "images/peperoni.jpeg", price: 15.95)
Pizza.create(name: "Plain Cheese", description: "Large Cheese Pizza", price: 13.95)
Pizza.create(name: "Veggie", description: "Large Veggie Pizza", price: 14.95, image_url: "images/Veggie.webp" )
Pizza.create(name: "Deluxe", description: "Large Pepperoni with Sausage, Green Pepper, Onion", price: 17.95)
Pizza.create(name: "Margherita Pizza", description: "Large Mozzarella and Tomato with Basil", price: 15.95, image_url: "images/margherita.jpeg")
Pizza.create(name: "Hawaiian", description: "Large Ham and Pineapple", price: 15.95)
Pizza.create(name: "BBQ Chicken", description: "Large Grilled Chicken Pizza with BBQ sauce, mozarella, and scallion", price: 17.95)
Pizza.create(name: "All Meat", description: "Large Pepperoni Pizza with Sausage, Ham, Bacon, and Ground Beef", price: 19.95)
Pizza.create(name: "White Truffle Pizza", description: "Large White Pizza with truffle oil and mushrooms", price: 17.95)

    