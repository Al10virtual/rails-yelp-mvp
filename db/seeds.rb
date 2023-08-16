require 'faker'

Restaurant.destroy_all

puts 'Creating 5 fake restaurants...'
5.times do
  restaurant = Restaurant.new(name: Faker::Company.name,
                              address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
                              category: %w[chinese italian japanese french belgian].sample,
                              phone_number: '0165985263'
                            )
  restaurant.save!
end
puts 'Finished!'
