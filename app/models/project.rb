class Project < ApplicationRecord
  belongs_to :advisor, class_name: "User", foreign_key: "advisor_id"
end
