# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name: "Benny", email: "benny123@test.com", password: "password")

User.create()

Snack.create(name: "BLT Sandwich Chip", brand: "Lays", user_id: 1)

Snack.create(name: "Summer Freeze", brand: "Mountain Dew", user_id: 1)

Snack.create(name: "Blackout Cake Oreo", brand: "Oreo", user_id: 1)

Location.create(name: "Walmart", snack_id: 1, address: "")

Location.create(name: "Target", snack_id: 1, address: "")

Location.create(name: "7-11 Gas Station", snack_id: 1, address: "")

Review.create(snack_id: 1, user_id: 1, note: "Tasted like I was eating a real BLT sandwich", snack_rate: 4)
