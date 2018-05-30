class InvestorPolicy < ApplicationPolicy

  class Scope < Scope #index
    def resolve
      scope.all #can  be .where(user = ...)
    end
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
      true
    end

    def show?
      true
    end

    def destroy
      true
    end

end
