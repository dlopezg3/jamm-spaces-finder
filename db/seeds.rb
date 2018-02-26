# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

User.delete_all
Space.delete_all

# USER
100.times do
 email = Faker::Internet.email
 password = Faker::Internet.password
 new_user = User.new(email: email, password: password)
 new_user.save
end

# Space

30.times do
  name = Faker::Commerce.department
  country = Faker::Address.country
  city = Faker::Address.city
  address = Faker::Address.street_address
  description =  Faker::Movie.quote
  price = (5..30).to_a.sample
  users = User.count
  user_id =  (1..users).to_a.sample
  new_space = Space.new(name: name, country: country, city: city, address: address, price_per_hour: price, user_id: user_id)
  new_space.save
end
