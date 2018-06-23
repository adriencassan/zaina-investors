class InvestorsController < ApplicationController

  def index
    @investors = policy_scope(Investor)
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
    @investor.save!
    @investor.update_sectors(params[:sector],params[:sector2])
    authorize @investor
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
    params.require(:investor).permit(:name, :sector, :sector2)
  end
end
