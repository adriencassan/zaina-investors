# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users / Zaina

zaina1 = User.new(email: "admin@zaina.io", password: "password", first_name:"admin", last_name:"admin" ,admin: true)
zaina1.save!

10.times do
  investor = Investor.new(name: "investisseur1", nature: "Family office", investment_min: rand(1..10), investment_max: rand(1..10), localisation: "hlh", operation_type: "Equity")
  investor.save!
end


10.times do |i|
  sector = Sector.new(name: "secteur n°#{i}")
  sector.save!
end


5.times do
  investor_sector = InvestorSector.new(investor_id: 1, sector_id: rand(1..5), rank: rand(1..2))
  investor_sector.save!
end
