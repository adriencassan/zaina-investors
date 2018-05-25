class AddResumeToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :resume, :string
  end
end
