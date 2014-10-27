Event.delete_all

20.times do
  Event.create date: Faker::Time.forward(21),
              location: Faker::Address.city,
              description: Faker::Lorem.sentence,
              capacity: rand(501),
              requires_id: [true, false, false].sample
end
