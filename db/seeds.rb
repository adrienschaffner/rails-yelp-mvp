# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "italian" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "chinese" }
au_bon_fromage =  { name: "Au bon Fromage", address: "24 rue Louis d'or 33200 Bordeaux", category: "french" }
nogari =  { name: "Nogari", address: "26 rue du japon", category: "japanese" }
friterie =  { name: "Friterie", address: "1 place du parlement 33000 Bordeauc", category: "belgian" }

[ dishoom, pizza_east, au_bon_fromage, nogari, friterie ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
