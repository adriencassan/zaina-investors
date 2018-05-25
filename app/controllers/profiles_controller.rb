class ProfilesController < ApplicationController

  def show
    @profile = current_user.profile
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

  def resume_fullpage
    @profile = Profile.find(params[:profile_id])
    render 'resume_fullpage'
    authorize @profile
  end

private

  def profile_params
  params.require(:profile).permit(:user_id, :first_name, :last_name, :resume, :resume_cache, :photo, :photo_cache)
  end

end
