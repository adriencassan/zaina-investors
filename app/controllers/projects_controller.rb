class ProjectsController < ApplicationController

before_action :find_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = policy_scope(Project)
  end

  def new
    @project = Project.new
    @advisors = User.where(role: "advisor")
    authorize @project
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    authorize @project
    if @project.save
      @project.new_project_member(current_user, @project)
      flash[:success] = "Thanks! We'll be in touch soon!"
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def new_project_member(user, project)
    @project_member = ProjectMember.new(user, project)
  end

  def show
    authorize @project
    # if current_user.role == "Zaina"
    #   render 'accounts/buyer'
    # elsif current_user.role == ""
    #   render 'accounts/seller'
    # elsif current_user.role == "Entrepreneur"
    #   render 'accounts/administrator'
    # end

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
