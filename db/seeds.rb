# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do |i|
	Product.create(unique_code: "Product #{i}", description: "Product #{i} this is your description", detail: "Detail for product #{i}", unit_price: 3 * i)
end

3.times do |i|
	Item.create(state: "Disponible", product_id: i)
end