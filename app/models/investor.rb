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

  def sectors_update(sectors1,sectors2)
    self.sectors.destroy_all
    sectors1.each { |sector| InvestorSector.create(project: self, sector: Sector.find(sector.id), rank:1)}
    sectors2.each { |sector| InvestorSector.create(project: self, sector: Sector.find(sector.id), rank:2)}
  end
end
