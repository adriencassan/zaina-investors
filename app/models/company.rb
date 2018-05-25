class Company < ApplicationRecord
  belongs_to :project

  mount_uploader :presentation_file, PresentationUploader
  mount_uploader :document, DocumentUploader

  before_create :get_companyname

  def get_companyname
    self.name = project.company
  end
end
