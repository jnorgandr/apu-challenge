# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Baby.where(name: 'Baby1').first_or_create
Baby.where(name: 'Baby2').first_or_create
Baby.where(name: 'Baby3').first_or_create
Baby.where(name: 'Baby4').first_or_create
Baby.where(name: 'Baby5').first_or_create
Baby.where(name: 'Baby6').first_or_create
Baby.where(name: 'Baby7').first_or_create
Baby.where(name: 'Baby8').first_or_create


8.times do |baby|
    Breastfeeding.where(baby_id: "#{baby+1}", volume: Random.rand(100..400), feedtime: Random.rand(5..10)).first_or_create
end

    