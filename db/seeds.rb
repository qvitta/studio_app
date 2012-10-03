# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Rails.env.development?
  require 'ffaker'
  50.times do |n|
    Event.create(name: Faker::Lorem.sentence, location: Faker::Address.city, due_at: rand(150).days.from_now)
    if (rand(2300) % 5) == 0
      Project.create(name: Faker::Company.name, description: Faker::Lorem.paragraphs.join('\n\n'))
    end
  end
end
