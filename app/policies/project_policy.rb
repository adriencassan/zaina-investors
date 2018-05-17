class ProjectPolicy < ApplicationPolicy
  class Scope < Scope #index
    def resolve
      Project.all #can  be .where(user = ...)
    end


    def new?
      create?      # @user.present?. Anyone that is logged in can create a project
    end

    def create?
      true #anyone that is logged in can create a project
    end

    def edit?
      #if onwner of the project (project members), you can edit
      update?
    end

    def update?
      is_owner_or_admin?
    end

    def show?
      true
    end

    def destroy
      is_owner_or_admin?
    end

    def is_owner_or_admin?
      @record.user == @user || @user.admin

    end
  end
end
