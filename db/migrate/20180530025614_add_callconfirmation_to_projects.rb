class AddCallconfirmationToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :callconfirmation, :boolean
  end
end
