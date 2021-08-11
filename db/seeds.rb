require 'faker'
array = %w[chinese italian japanese french belgian]

5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_name,
    phone_number: Faker::PhoneNumber.phone_number,
    category: array.sample
  )
  restaurant.save!
end
