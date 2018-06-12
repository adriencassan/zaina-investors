class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :type
      t.references :project, foreign_key: true
      t.references :user, foreign_key: true
      t.string :name
      t.datetime :datetime
      t.boolean :relevant
    end
  end
end
