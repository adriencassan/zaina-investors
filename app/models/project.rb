class Project < ApplicationRecord
  belongs_to :user
  has_many :projectmembers

  def self.project_names
    @project_names = []
    @projects = Project.all
    @projects.each do |project|
      @project_names << project.project_name
    end
    return @project_names
  end

end
