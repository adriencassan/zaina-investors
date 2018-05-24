class ProjectmessagesController < ApplicationController


  def create # POST
    @project = Project.find(params[:project_id])
    @user = current_user
    @projectmessage = Projectmessage.new(message_params)
    @projectmessage.project = @project
    @projectmessage.user = @user
    @projectmessage.date = Date.today

    if @projectmessage.save!
      authorize @project
      @projectmessage = Projectmessage.new
      redirect_to project_path(@project)
    else
      # LE RENDER EN CAS D'ERREUR EST ENCORE A CODER COCOTTE
    end
  end

  private

  def message_params
    params.require(:projectmessage).permit(:message)
  end
end
