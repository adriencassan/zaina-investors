class InvestorNomenclature < ApplicationRecord

  def self.sectors
    InvestorNomenclature.where(type_nomenclature: "sector")
  end

  def self.zones
    InvestorNomenclature.where(type_nomenclature: "zone")
  end

  def self.nature_operations
    InvestorNomenclature.where(type_nomenclature: "nature_operation").pluck(:name)
  end
end
