puts 'Cleaning your database..'
Flat.destroy_all

puts 'Creating flats..'
12.times do
  query = %w[apartment room house cottage home bedroom].sample
  Flat.create!(
    name: "#{Faker::Address.building_number} #{Faker::Address.community}",
    address: Faker::Address.full_address,
    description: Faker::Restaurant.description,
    price_per_night: rand(10..1000),
    number_of_guests: rand(1..10),
    img_url: "https://source.unsplash.com/featured/?#{query}"
  )
end
puts 'Finished creating new flats!'

# puts 'Adding reviews to restaurants..'
# @restaurants = Restaurant.all
# @restaurants.each do |restaurant|
#   rand(5..10).times do
#     review = Review.create!(
#       content: Faker::Restaurant.review,
#       rating: rand(0..5)
#     )
#     review.restaurant = restaurant
#     review.save
#   end
# end

# t.string :name
# t.string :address
# t.text :description
# t.integer :price_per_night
# t.integer :number_of_guests
