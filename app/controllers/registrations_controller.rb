class RegistrationsController < Devise::RegistrationsController
  def new
    @role = params["role"]
    super
  end

  def create
    @role = params[:user]["role"]
    super
    # add custom create logic here
  end

  def update
    super
  end
end
