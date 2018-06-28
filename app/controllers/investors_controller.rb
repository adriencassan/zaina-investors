class InvestorsController < ApplicationController

  def index
    @investors = policy_scope(Investor).order(id: :asc).paginate(page: params[:page], per_page: 10)
    authorize @investors
  end

  def new
    @investor = Investor.new()
    3.times { @investor.investor_contacts.build }
    authorize @investor
  end

  def edit
    @investor = Investor.find(params[:id])
    @investor.investor_contacts.build
    #@investor_contact = InvestorContact.new
    authorize @investor
  end

  def create
    @investor = Investor.new(investor_param)
    authorize @investor
    if @investor.save
      @investor.update_attributes(params[:sector],params[:sector2],params[:zones])
      redirect_to investors_path
    else
      3.times { @investor.investor_contacts.build }
      render "investors/new"
    end
  end

  def update
    @investor = Investor.find(params[:id])
    @investor.update(investor_param)
    @investor.update_attributes(params[:sectors],params[:sectors2],params[:zones])
    authorize @investor
    redirect_to investors_path
  end

  private

  def investor_param
    params.require(:investor).permit(:name, :sectors, :sectors2, :zones, :investment_min, :investment_max, :nature, :operation_type, :localisation, :comment, investor_contacts_attributes: [:id, :name, :role, :email, :phone, :_destroy])
  end
end
