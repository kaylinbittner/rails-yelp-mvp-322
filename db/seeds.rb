puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '1-937-903-2256',
    category:        'French'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number:  '1-937-748-2899',
    category:        'Italian'
  },
  {
    name:         'China City',
    address:      '15 Creekview Court, Springboro, OH 45066',
    phone_number:  '1-937-903-0848',
    category:        'Chinese'
  }
]

Restaurant.create!(restaurants_attributes)
puts 'Finished!'
