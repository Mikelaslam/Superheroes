# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:


puts "Seeding heroes..."
hero1 = Hero.create(name: "Superman", super_name: "Kinki")
hero2 = Hero.create(name: "Superwoman", super_name: "Marcell")
hero3 = Hero.create(name: "Batman", super_name: "Dude")
hero4 = Hero.create(name: "Spiderman", super_name: "Kinyamu")

puts "Seeding powers..."

power1 = Power.create(name: "Palm reader", description: "Reads palms to interprate problems and offer solutions")
power2 = Power.create(name: "Rain Maker", description: "Calls for rain during drought and halts the rain during floods")
power3 = Power.create(name: "Bad omen", description: "Foretells when something bad is about to happen")
power4 = Power.create(name: "Healer", description: "Herberlist who uses herbs to treat sicknesses")

puts "Seeding Hero-powers"

hero_power1 = HeroPower.create(strength: "Strong", hero_id: 2, power_id: 3)
hero_power2 = HeroPower.create(strength: "Weak", hero_id: 3, power_id: 2)
hero_power3 = HeroPower.create(strength: "Average", hero_id: 1, power_id: 4)
hero_power4 = HeroPower.create(strength: "Strong", hero_id: 4, power_id: 1)

puts "Done seeding!"
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
