# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

for i in 1..20
    Toy.create(
        name: Faker::Superhero.name,
        description: Faker::Demographic.demonym,
        date: Time.at(Time.new(1990).to_f + rand * (Time.now.to_f - Time.new(1990).to_f)).to_date,
        user: Faker::Name.name
    )

    puts "Created #{i} toys"
end