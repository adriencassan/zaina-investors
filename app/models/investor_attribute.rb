class InvestorAttribute < ApplicationRecord
  belongs_to :investor
  belongs_to :investor_nomenclature
end
