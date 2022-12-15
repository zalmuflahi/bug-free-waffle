# This will delete any existing rows from the Restaurant and Customer tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting Restaurant/Customer data..."
Restaurant.destroy_all
Customer.destroy_all

puts "Creating restaurants..."
restaurant1 = Restaurant.create(name: "Karen's Lobster Shack", price: 1)
restaurant2 = Restaurant.create(name: "Sanjay's Lobster Bistro", price: 2)
restaurant3 = Restaurant.create(name: "Kiki's Lobster Palace", price: 3)

puts "Creating customers..."
customer1 = Customer.create(first_name: "Emma", last_name: "Bunton")
customer2 = Customer.create(first_name: "Geri", last_name: "Halliwell")
customer3 = Customer.create(first_name: "Melanie", last_name: "Brown")
customer4 = Customer.create(first_name: "Melanie", last_name: "Chisholm")
customer5 = Customer.create(first_name: "Victoria", last_name: "Addams")

puts "Creating reviews..."
# ********************************************************************
# * TODO: create reviews! Remember, a review belongs to a restaurant *
# * and a review belongs to a customer.                              *
# ********************************************************************
# Create reviews Here

review1 = Review.create(content: 'nice place', star_rating: 3,customer_id: customer1.id, restaurant_id: restaurant1.id)
review2 = Review.create(content: 'not good', customer_id: customer1.id, restaurant_id: restaurant2.id)
review3 = Review.create(content: 'best place', star_rating: 4, customer_id: customer2.id, restaurant_id: restaurant3.id)
review4 = Review.create(content: 'the place', star_rating: 5, customer_id: customer2.id, restaurant_id: restaurant3.id)

puts "Seeding done!"