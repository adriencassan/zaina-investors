class Project < ApplicationRecord
  belongs_to :advisor, class_name: "User", foreign_key: "advisor_id"
  has_many :project_members
  belongs_to :user, :through :project_member
end
