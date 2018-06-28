class Investor < ApplicationRecord
   has_many :investor_attributes
   has_many :investor_contacts

   accepts_nested_attributes_for :investor_contacts, allow_destroy: true, reject_if: lambda {|attributes| attributes['name'].blank?}


   validates :name, presence: true
   validates :operation_type, inclusion: { in: ["Debt","Equity"] }


  def sectors_primary
    InvestorAttribute.where(investor: self).where(type_attribute: "sector_primary").map { |a| a.investor_nomenclature }
  end

  def sectors_secondary
    InvestorAttribute.where(investor: self).where(type_attribute: "sector_secondary").map { |a| a.investor_nomenclature }
  end


  def zones
    InvestorAttribute.where(investor: self).where(type_attribute: "zone").map { |a| a.investor_nomenclature }
  end

  def update_attributes(sectors1,sectors2,zones)
    InvestorAttribute.where(investor: self).destroy_all
    sectors1.each { |id| InvestorAttribute.create(investor: self, investor_nomenclature: InvestorNomenclature.find(id), type_attribute: "sector_primary")} unless sectors1.nil?
    sectors2.each { |id| InvestorAttribute.create(investor: self, investor_nomenclature: InvestorNomenclature.find(id), type_attribute: "sector_secondary")} unless sectors2.nil?
    zones.each { |id| InvestorAttribute.create(investor: self, investor_nomenclature: InvestorNomenclature.find(id), type_attribute: "zone")} unless zones.nil?
  end
end
