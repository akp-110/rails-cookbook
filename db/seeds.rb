# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ['Action', 'Comedy', 'Drama', 'Horror'].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Seeding data....'

Bookmark.destroy_all
Category.destroy_all
Recipe.destroy_all

Recipe.create!(
  name: 'Spaghetti Carbonara',
  description: 'Authentic Carbonara recipe',
  image_url: 'https://static01.nyt.com/images/2021/02/14/dining/carbonara-horizontal/carbonara-horizontal-threeByTwoMediumAt2X-v2.jpg?quality=75&auto=webp',
  rating: 4.5
)
Recipe.create!(
  name: 'Fish & Chips',
  description: 'A British classic',
  image_url: 'https://www.thespruceeats.com/thmb/sdVTq0h7xZvJjPr6bE2fhh5M3NI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/SES-best-fish-and-chips-recipe-434856-hero-01-27d8b57008414972822b866609d0af9b.jpg',
  rating: 3.9
)
Recipe.create!(
  name: 'Chicken Chow Mein',
  description: 'Chicken noodles',
  image_url: 'https://tiffycooks.com/wp-content/uploads/2023/09/188E6766-B4B4-48FB-80F9-9E7EBA5B6278-1152x1536.jpg',
  rating: 4.3
)
Recipe.create!(
  name: 'Butter Chicken',
  description: 'Wholesome Indian chicken curry',
  image_url: 'https://images.immediate.co.uk/production/volatile/sites/30/2021/02/butter-chicken-ac2ff98.jpg?quality=90&webp=true&resize=440,400',
  rating: 4.6
)

puts "#{Recipe.count} recipes created"
