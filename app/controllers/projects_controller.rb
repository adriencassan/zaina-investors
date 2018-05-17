class ProjectsController < ApplicationController

before_action :find_project, only: [:show, :edit, :update, :destroy]


  def index
    @projects = Project.policy_scope(Project)
  end

  def new
    @project = Project.new
    @advisors = User.where(role: "advisor")
    authorize @project
  end

  def create
    @project = Project.new(project_params)
    authorize @project
    @project.save
  end

  def show
    authorize @project
  end

  def edit
    authorize @project
  end

  def update
    authorize @project
  end

  def destroy
    authorize @project
  end

private

  def find_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:status, :user, :company, :sector, :project_name)
  end

end
