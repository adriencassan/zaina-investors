class AddProcessconfirmationToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :processconfirmation, :boolean
  end
end
