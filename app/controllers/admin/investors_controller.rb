class Admin::InvestorsController < ApplicationController
  before_action :authorized?

  def export
    @investors = policy_scope(Investor)
    authorize @investors
    respond_to do |format|
      format.csv { send_data @investors.to_csv, filename: "investors-#{Date.today}.csv" }
    end
  end

  private
  def authorized?
    unless current_user.admin == true
      flash[:error] = "You are not authorized to view that page."
      redirect_to root_path
    end
  end

end
