# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


store1 = Store.create(name: "My Store", url: "https://mystore.com")
store2 = Store.create(name: "Another Store", url: "https://anotherstore.com")

product1 = Product.create(name: "Product 1", sku: "ABC123", inventory_quantity: 10, inventory_updated_time: Time.now, store_id: store1.id)
product2 = Product.create(name: "Product 2", sku: "DEF456", inventory_quantity: 5, inventory_updated_time: Time.now, store_id: store1.id)
product3 = Product.create(name: "Product 3", sku: "GHI789", inventory_quantity: 3, inventory_updated_time: Time.now, store_id: store2.id)