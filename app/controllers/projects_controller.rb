class ProjectsController < ApplicationController

before_action :find_project, only: [:new, :show]


  def index
    @projects = Project.all
  end

  def new
    @user = User.find(params[:user_id])
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
      # we need an advisor, not a user. the advisor is selected by admin
    @project.advisor = params[:advisor]
    @project.save
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

  def find_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:status, :advisor, :company, :sector, :project_name)
  end

end
