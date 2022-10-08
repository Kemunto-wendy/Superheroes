# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'start'
10.times do
    HeroPower.create(
        strength: 'Strong',
        hero_id: rand(1..4),
        power_id: rand(1..5)
    )

    HeroPower.create(
      strength: 'Weak',
      hero_id: rand(1..4),
      power_id: rand(1..5)
  )

  HeroPower.create(
    strength: 'Average',
    hero_id: rand(1..4),
    power_id: rand(1..5)
)
end

    Heero.create(name: 'JOY KEMUNTO',super_name: 'Truoy')
    Heero.create(name: 'KEVIN FOLABI',super_name: 'Folabi')
    Heero.create(name: 'BRENDAY WENDY',super_name: 'Bee')
    Heero.create(name: 'CHARLES KARIUKI',super_name: 'Paps')
    Heero.create(name: 'LUCY MWANGI',super_name: 'Rucee')

    Power.create(name: 'Kempinski', description:'Nairobi 00100')
    Power.create(name: 'Kienyeji store', description:'Ngong Road 13456')
    Power.create(name: 'Manhattan', description:'NairobiCBD 56889')
    Power.create(name: 'Avenida', description:'Nairobi 10321')

puts 'end'
