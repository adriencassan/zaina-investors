class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.text :project_name
      t.text :company
      t.text :status
      t.text :sector
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
