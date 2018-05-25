class AddBackgroundToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :background, :string
  end
end
