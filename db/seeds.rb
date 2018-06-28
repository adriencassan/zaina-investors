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



# Secteurs
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Tous secteurs")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Energie")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Hygiène")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Environnement")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Agro-industrie ")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Agro-alimentaire")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Tourisme")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Automobile")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Ressources naturelles")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Télécommunication")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Aéronautique ")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Electronique")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Micro-électronique")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Chimie")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Cosmétique")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Industrie pharmaceutique")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Biotechnologie")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Nanotechnologie")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Distribution")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Logistique")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Industrie métallurgique")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Industrie Plastique")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Sécurité")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Informatique")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Offshoring ")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Agriculture ")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Sylviculture et Pêche ")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Industrie")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Electricité")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Gaz")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Eau")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Construction ")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Commerce")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Réparation d'automobile et de motocycle")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Transport")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Restauration")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Hotellerie")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Technologies de l’Information et de la Communication")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Services financiers")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Services d’Assurance ")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Activités immobilières ")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Services Administratifs ")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Administration publique")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Education")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Santé")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Action Sociale")
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Arts" )
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Artisanat " )
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Evénementiel" )
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Nutrition " )
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Bien-être" )
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Nutrition" )
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Alimentation" )
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Énergies renouvelables" )
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Nouvelles technologies" )
InvestorNomenclature.create(type_nomenclature: 'sector', name: "Smart city" )

# Zone ciblées
InvestorNomenclature.create(type_nomenclature: 'zone', name: 'Maroc')
InvestorNomenclature.create(type_nomenclature: 'zone', name: 'Afrique du Nord')
InvestorNomenclature.create(type_nomenclature: 'zone', name: 'Afrique subsaharienne')
InvestorNomenclature.create(type_nomenclature: 'zone', name: 'Afrique')
InvestorNomenclature.create(type_nomenclature: 'zone', name: 'Algérie')
InvestorNomenclature.create(type_nomenclature: 'zone', name: 'Tunisie')
InvestorNomenclature.create(type_nomenclature: 'zone', name: 'Cameroun')
InvestorNomenclature.create(type_nomenclature: 'zone', name: 'Côte d’Ivoire')
InvestorNomenclature.create(type_nomenclature: 'zone', name: 'Egypte')
InvestorNomenclature.create(type_nomenclature: 'zone', name: 'Sénégal')

#Natures opérations
InvestorNomenclature.create(type_nomenclature: 'nature_operation', name: 'Capital Amorçage')
InvestorNomenclature.create(type_nomenclature: 'nature_operation', name: 'Capital Risque')
InvestorNomenclature.create(type_nomenclature: 'nature_operation', name: 'Capital Développement')
InvestorNomenclature.create(type_nomenclature: 'nature_operation', name: 'Capital Transmission')
InvestorNomenclature.create(type_nomenclature: 'nature_operation', name: 'LBO')
InvestorNomenclature.create(type_nomenclature: 'nature_operation', name: 'Mezzanine ')
InvestorNomenclature.create(type_nomenclature: 'nature_operation', name: 'Rachat de positions intermédiaires ')
InvestorNomenclature.create(type_nomenclature: 'nature_operation', name: 'Retournement')
InvestorNomenclature.create(type_nomenclature: 'nature_operation', name: 'Garantie ')


