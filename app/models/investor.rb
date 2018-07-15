class Investor < ApplicationRecord
   has_many :investor_attributes
   has_many :investor_contacts

   accepts_nested_attributes_for :investor_contacts, allow_destroy: true, reject_if: lambda {|attributes| attributes['name'].blank?}


   validates :name, presence: true


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

  def self.to_csv
    CSV.generate({headers: true, col_sep: ";", encoding: 'UTF-8'}) do |csv|
      csv << ["id","nom","nature","investment_min","investment_max","operation_type","localisation","comment","corp_value_min","corp_value_max","target_criteria","terms_financial","terms_other","sectors_primary","sectors_secondary","zones"]

      all.each do |i|
        csv << [
          i.id,
          i.name,
          i.nature,
          i.investment_min,
          i.investment_max,
          i.operation_type,
          i.localisation,
          i.comment.nil? ? "" : i.comment.gsub(/;/,","),
          i.corp_value_min,
          i.corp_value_max,
          i.target_criteria.nil? ? "" : i.target_criteria.gsub(/;/,","),
          i.terms_financial.nil? ? "" : i.terms_financial.gsub(/;/,","),
          i.terms_other.nil? ? "" : i.terms_other.gsub(/;/,","),
          i.sectors_primary.nil? ? "" : i.sectors_primary.pluck(:name).join("/"),
          i.sectors_secondary.nil? ? "" : i.sectors_secondary.pluck(:name).join("/"),
          i.zones.nil? ? "" : i.zones.pluck(:name).join("/")
          ]
      end
    end
  end

end
