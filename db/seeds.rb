# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?


cat = Catagory.create!(name: "Fantasy")

malazan = ["Gardens of the Moon", "Deadhouse Gates", "Memories of Ice", "House of Chains", "Midnight Tides", "The Bonehunters", "Reapers Gale", "Toll the Hounds", "Dust of Dreams", "The Crippled God"]
author = "Steven Erikson"
description = "A book in the 'Malazan: Book of the Fallen' series."
price = 15.00
type = "Book"

malazan.each do |name|
  cat.products.create!(
    name: name,
    author: author,
    description: description,
    price: price,
    type: type
  )
end

4.times do
  name = Faker::Book.genre
  catag = Catagory.find_or_create_by!(name: name)
  25.times do
    name = Faker::Book.title
    author = Faker::Book.author
    price = rand(5000..100_000).to_i
    description = Faker::Hipster.sentence(word_count: rand(4..8))
    catag.products.create!(
      name: name,
      author: author,
      description: description,
      price: price,
      type: type
    )
  end
end


