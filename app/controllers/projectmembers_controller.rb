class ProjectmembersController < ApplicationController


  def new
    @project = Project.find(params[:project_id])
    @projectmember = Projectmember.new
    authorize @projectmember
  end


  def create
    @projectmember = Projectmember.new(projectmember_params)
    @project = Project.find(params[:project_id])
    @projectmember.project = @project
    authorize @projectmember
    if @projectmember.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end


private

  # def find_projectmember
  #   @project = Project.find(user: current_user)
  # end

  def projectmember_params
    params.require(:projectmember).permit(:user_id)
  end

end
