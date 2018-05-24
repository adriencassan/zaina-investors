class Project < ApplicationRecord
  belongs_to :user
  has_many :projectmembers
  has_many :projectmessages


  def self.project_names
    @project_names = []
    @projects = Project.all
    @projects.each do |project|
      @project_names << project.project_name
    end
    return @project_names
  end

  def has_projectmember?
    self.projectmembers.nil? || self.projectmembers.empty?
    # Projectmember.where(project_id: @project.id).nil? ||Projectmember.where(project_id: @project.id).empty?
  end

end
