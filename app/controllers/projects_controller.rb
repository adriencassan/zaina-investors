class ProjectsController < ApplicationController

before_action :find_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = policy_scope(Project)
    @project_names = Project.project_names
  end


  def new
    @project = Project.new(user: current_user)
    # @advisors = User.where(role: "advisor")
    authorize @project
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    authorize @project
    if @project.save
      flash[:success] = "Thanks! We'll be in touch soon!"
      redirect_to project_path(@project)
    else
      render :new
    end
  end


  def show
    @project = Project.find(params[:id])
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
    @project = Project.find_by(user: current_user)
  end

  def project_params
    params.require(:project).permit(:sector, :project_name, :description, :user)
  end

end
