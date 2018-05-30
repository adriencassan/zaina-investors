class InvestorsController < ApplicationController

def index
    @investors = policy_scope(investor)

  end

  def new
    @project = Project.find(params[:project_id])
    @investor = Investor.new(project_id: @project.id)
    authorize @investor
  end

  def create
    @investor = Investor.new(investor_params)
    @project = Project.find(params[:project_id])
    @investor.project = @project
    authorize @investor
    if @investor.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def show
    @investor = Investor.find(params[:id])
    authorize @investor
  end

  def edit
    authorize @investor
  end

  def update
    authorize @investor
  end

  def destroy
    authorize @investor
  end

private

  def find_investor
    @investor = Investor.find_by(project_id: @project.id)
  end

  def investor_params
    params.require(:investor).permit(:name, :geography, :nature, :project_id, :contacted, :contacts, :nextstep, :comment)
  end

end



