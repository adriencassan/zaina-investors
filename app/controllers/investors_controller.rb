class InvestorsController < ApplicationController

  def index
    @investors = policy_scope(Investor).order(id: :asc).paginate(page: params[:page], per_page: 10)
    authorize @investors
  end

  def new
    @investor = Investor.new()
    authorize @investor
  end

  def edit
    @investor = Investor.find(params[:id])
    authorize @investor
  end

  def create
    @investor = Investor.new(investor_param)
    authorize @investor
    if @investor.save
      @investor.update_sectors(params[:sector],params[:sector2])
      redirect_to investors_path
    else
      render "investors/new"
    end
  end

  def update
    @investor = Investor.find(params[:id])
    @investor.update(investor_param)
    @investor.update_sectors(params[:sector],params[:sector2])
    authorize @investor
    redirect_to investors_path
  end

  private

  def investor_param
    params.require(:investor).permit(:name, :sector, :sector2, :investment_min, :investment_max, :nature, :operation_type, :localisation, :comment)
  end
end
