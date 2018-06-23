class Investor < ApplicationRecord
   has_many :investor_sectors
   has_many :sectors, through: :investor_sectors


   validates :name, presence: true
   validates :operation_type, inclusion: { in: ["Debt","Equity"] }


  def sectors_primary
    InvestorSector.where(investor: self).where(rank: 1).map { |a| a.sector }
  end

  def sectors_secondary
    InvestorSector.where(investor: self).where(rank: 2).map { |a| a.sector }
  end

  def update_sectors(sectors1,sectors2)
    self.sectors.destroy_all
    sectors1.each { |id| InvestorSector.create(investor: self, sector: Sector.find(id), rank:1)} unless sectors1.nil?
    sectors2.each { |id| InvestorSector.create(investor: self, sector: Sector.find(id), rank:2)} unless sectors2.nil?
  end
end
