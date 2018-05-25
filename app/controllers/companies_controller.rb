class CompaniesController < ApplicationController

  def show
    @project = Project.find(params[:project_id])
    @company = @project.company
    authorize @company
  end

  def create
    @company = Company.new(company_params)
    authorize @company
  end

  def edit
    @project = Project.find(params[:project_id])
    @company = @project.company
    authorize @company
  end

  def update
    @project = Project.find(params[:project_id])
    @company= Company.find_by(project_id: @project.id)
    if @company.update(company_params)
      render 'show'
    else
      render 'edit'
    end
    authorize @company
  end

private

  def company_params
  params.require(:company).permit(:project_id, :sector,
  :creation_year,
  :activity,
  :business_model,
  :presentation_file,
  :presentation_file_cache,
  :client_nature,
  :top_clients_weight,
  :number_employee,
  :top_team,
  :revenues_nature,
  :gross_margin,
  :ebitda,
  :competitive_advantage,
  :risk,
  :development_plan,
  :document,
  :document_cache)
end


end



