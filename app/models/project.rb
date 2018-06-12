class Project < ApplicationRecord
  belongs_to :user
  has_many :projectmembers
  has_many :projectmessages
  has_many :events
  has_one :company
  has_many :investors

  after_create :build_company

  def build_company
    Company.create(project_id: self.id)
  end

  def self.project_names
    @project_names = []
    @projects = Project.all
    @projects.each do |project|
      @project_names << project.project_name
    end
    return @project_names
  end

  def has_projectmember?
    true unless (self.projectmembers.nil? || self.projectmembers.empty?)
    # Projectmember.where(project_id: @project.id).nil? ||Projectmember.where(project_id: @project.id).empty?
  end

  def advisors
    @project = self
    @project_advisors = []
    @project.projectmembers.each do |projectmember|
      @member = projectmember.user
      if @member.role == "Advisor"
        @project_advisors << @member
      end
    end
    return @project_advisors
  end

  def zainas
    @project = self
    @project_zainas = []
    @project.projectmembers.each do |projectmember|
      @member = projectmember.user
      if @member.role == "Zaina"
        @project_zainas << @member
      end
    end
    return @project_zainas
  end

  def has_advisormember?
    true unless self.advisors.empty?
  end

  def has_zainamember?
     true unless self.zainas.empty?
  end


end
