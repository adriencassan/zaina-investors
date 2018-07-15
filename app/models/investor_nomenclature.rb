class InvestorNomenclature < ApplicationRecord
  validates :name, presence: true, format: { without: /(;|,|\/)/, message: "les caractères ; et , ne sont pas autorisés" }

  def self.sectors
    InvestorNomenclature.where(type_nomenclature: "sector").order(:name)
  end

  def self.zones
    InvestorNomenclature.where(type_nomenclature: "zone").order(:name)
  end

  def self.nature_operations
    InvestorNomenclature.where(type_nomenclature: "nature_operation").order(:name).pluck(:name)
  end

  def self.type_operations
    InvestorNomenclature.where(type_nomenclature: "type_operation").order(:name).pluck(:name)
  end

end
