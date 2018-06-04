class ProjectsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:confirm_call]
  skip_before_action :authenticate_user!, only: [:confirm_call]
  before_action :find_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = policy_scope(Project)
    @project_names = Project.project_names
  end

  def new
    @project = Project.new(user: current_user)
    #@project.save
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
    @tab = params[:tab].nil? ? "tab0" : "tab#{params[:tab]}"
    @user = current_user
    @projectmessage = Projectmessage.new
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

  def confirm_call
    @project = Project.find(params[:id])
    @project.callconfirmation = true
    @project.save
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
