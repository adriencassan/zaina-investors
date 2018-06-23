class Sector < ApplicationRecord
  has_many :investor_sectors
  has_many :investors, through: :investor_sectors
end
