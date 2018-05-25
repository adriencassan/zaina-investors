class AddProjectToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_reference :companies, :project, foreign_key: true
  end
end
