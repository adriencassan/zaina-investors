class ProfilesController < ApplicationController


  def show
    @profile = Profile.find(params[:id])
    authorize @profile
  end

  def create
    @profile = Profile.new(profile_params)
    authorize @profile
  end

  def edit
    @profile = Profile.find_by(user_id: current_user.id)
     authorize @profile
  end

  def update
    @profile = Profile.find_by(user_id: current_user.id)
    if @profile.update(profile_params)
      flash[:notices] = ["Your profile was successfully updated"]
      render 'show'
    else
      flash[:notices] = ["Your profile could not be updated"]
      render 'edit'
    end
    authorize @profile
  end

private

  def profile_params
  params.require(:profile).permit(:user_id)
  end

end
