require 'faker'

puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'

4.times do
  Flat.create!(
    name: Faker::Lorem.sentence(word_count: 3),
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph(sentence_count: 5),
    price_per_night: rand(50..300),
    number_of_guests: rand(1..10),
    picture_url: "https://loremflickr.com/320/240/house"
  )
end

puts 'Finished!'
