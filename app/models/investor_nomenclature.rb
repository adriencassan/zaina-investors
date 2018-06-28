class InvestorNomenclature < ApplicationRecord

  def self.sectors
    InvestorNomenclature.where(type_nomenclature: "sector")
  end

  def self.zones
    InvestorNomenclature.where(type_nomenclature: "zone")
  end
end
