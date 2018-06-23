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
    raise
  end


end
