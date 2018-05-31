class InvestorsController < ApplicationController
  skip_after_action :verify_authorized
  def index
    @investors = policy_scope(investor)
  end

  def new
    @project = Project.find(params[:project_id])
    @investor = Investor.new(project_id: @project.id)

  end

  def create
    @investor = Investor.new(investor_params)
    @project = Project.find(params[:project_id])
    @investor.project = @project

    if @investor.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def show
    @investor = Investor.find(params[:id])

  end

  def edit
    @project = Project.find(params[:project_id])
    @investor= Investor.find(params[:id])
  end

  def update
    @project = Project.find(params[:project_id])
    @investor = Investor.find_by(project_id: @project.id)
    @investor.project = @project
    if @investor.update(investor_params)
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def destroy

  end

private

  def find_investor
    @investor = Investor.find_by(project_id: @project.id)
  end

  def investor_params
    params.require(:investor).permit(:name, :geography, :nature, :project_id, :contacted, :contacts, :nextstep, :comment)
  end

end



