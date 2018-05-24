class Projectmessage < ApplicationRecord
  belongs_to :user
  belongs_to :project




  def create # POST
    @project = Project.find(params[:id])
    @user = current_user
    @projectmessage = Projectmessage.new(message_params)
    @projectmessage.project = @project
    @projectmessage.user = @user
    @projectmessage.date = Date.today
    if @projectmessage.save
      redirect_to project_path(@project)
    else
      #@ingredients = Ingredient.all - @cocktail.ingredients
      #render 'cocktails/show'
    end
  end

  private

  def message_params
    params.require(:projectmessage).permit(message)
  end
end
