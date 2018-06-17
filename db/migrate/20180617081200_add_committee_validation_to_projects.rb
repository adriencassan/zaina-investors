class AddCommitteeValidationToProjects < ActiveRecord::Migration[5.1]
  def change
     add_column :projects, :call_done, :boolean
     add_column :projects, :process_zainavalidation, :boolean
  end
end
