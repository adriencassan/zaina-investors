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

35.times do |i|
  investor = Investor.new(name: "investisseur n°#{i}", nature: "Family office", investment_min: rand(100..1000), investment_max: rand(100..1000), localisation: "hlh", operation_type: "Equity")
  investor.save!
end


# Secteurs
Sector.create(name: "AGRICULTURE")
Sector.create(name: "SYLVICULTURE ET PÊCHE")
Sector.create(name: "INDUSTRIES EXTRACTIVES")
Sector.create(name: "INDUSTRIE MANUFACTURIÈRE")
Sector.create(name: "PRODUCTION ET DISTRIBUTION D'ÉLECTRICITÉ, DE GAZ, DE VAPEUR ET D'AIR CONDITIONNÉ")
Sector.create(name: "PRODUCTION ET DISTRIBUTION D'EAU, ASSAINISSEMENT, GESTION DES DÉCHETS ET DÉPOLLUTION")
Sector.create(name: "CONSTRUCTION")
Sector.create(name: "COMMERCE")
Sector.create(name: "RÉPARATION D'AUTOMOBILES ET DE MOTOCYCLES")
Sector.create(name: "TRANSPORTS ET ENTREPOSAGE")
Sector.create(name: "HÉBERGEMENT ET RESTAURATION")
Sector.create(name: "INFORMATION ET COMMUNICATION")
Sector.create(name: "ACTIVITÉS FINANCIÈRES ET D'ASSURANCE")
Sector.create(name: "ACTIVITÉS IMMOBILIÈRES")
Sector.create(name: "ACTIVITÉS SPÉCIALISÉES")
Sector.create(name: "SCIENTIFIQUES ET TECHNIQUES")
Sector.create(name: "ACTIVITÉS DE SERVICES ADMINISTRATIFS ET DE SOUTIEN")
Sector.create(name: "ADMINISTRATION PUBLIQUE")
Sector.create(name: "ENSEIGNEMENT")
Sector.create(name: "SANTÉ HUMAINE ET ACTION SOCIALE")
Sector.create(name: "ARTS, SPECTACLES ET ACTIVITÉS RÉCRÉATIVES")
Sector.create(name: "AUTRES ACTIVITÉS DE SERVICES")
Sector.create(name: "ACTIVITÉS DES MÉNAGES EN TANT QU'EMPLOYEURS")
Sector.create(name: "ACTIVITÉS INDIFFÉRENCIÉES DES MÉNAGES EN TANT QUE PRODUCTEURS DE BIENS ET SERVICES POUR USAGE PROPRE")
Sector.create(name: "ACTIVITÉS EXTRA-TERRITORIALES")


Investor.all.each do |investor|

  rand(1..3).times do
    investor_sector = InvestorSector.new(investor: investor, sector: Sector.all.sample, rank: 1)
    investor_sector.save!
  end
end
