# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

Flat.destroy_all
10.times do
  Flat.create!(
    name: Faker::Commerce.department,
    address: Faker::Address.country,
    description: Faker::Company.catch_phrase,
    price_per_night: (25..500).to_a.sample,
    number_of_guests: (1..5).to_a.sample,
    image: "https://picsum.photos/id/#{rand(1..1000)}/3000"
  )
end
