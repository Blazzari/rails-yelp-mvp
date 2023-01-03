puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
seed_restaurants = [
  { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '0134861275', category: 'chinese' },
  { name: 'Cabouche', address: '8 epic, London E2 7JE', phone_number: '0134861355', category: 'italian' },
  { name: 'Sushhi', address: '26 downtown, London E2 7JE', phone_number: '0134552898', category: 'japanese' },
  { name: 'La bonne soupe', address: '89 le champ, London E2 7JE', phone_number: '0134552833', category: 'french' },
  { name: 'Fritte du chef', address: '18 la fritte, London E2 7JE', phone_number: '0134552844', category: 'belgian' }
]

seed_restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
