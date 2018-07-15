User.create(email: "admin@zaina.io", password: "20ZADM18@", first_name:"admin", last_name:"admin" ,admin: true)

35.times do |i|
  investor = Investor.new(name: "investisseur n°#{i}", nature: InvestorNomenclature.nature_operations.sample, investment_min: rand(100..1000), investment_max: rand(100..1000), localisation: ["DZ","FR","AU","BE","CA","CN","DE","MX","TN","SN","MA","US"].sample, operation_type: "Equity")
  investor.save!
end


Investor.all.each do |investor|

  rand(1..3).times do
    investor_sector = InvestorAttribute.new(investor: investor, investor_nomenclature: InvestorNomenclature.sectors.sample, type_attribute: "sector_primary")
    investor_sector.save!
  end

  rand(1..3).times do
    investor_sector = InvestorAttribute.new(investor: investor, investor_nomenclature: InvestorNomenclature.sectors.sample, type_attribute: "sector_secondary")
    investor_sector.save!
  end

  rand(1..2).times do
    investor_zone = InvestorAttribute.new(investor: investor, investor_nomenclature: InvestorNomenclature.zones.sample, type_attribute: "zone")
    investor_zone.save!
  end
end


3.times do |i|
  investor = Investor.find(1)
  investor_contact  = InvestorContact.create(investor: investor, name:"Adrien #{i}")
end
