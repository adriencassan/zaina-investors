class CreateProjectmessages < ActiveRecord::Migration[5.1]
  def change
    create_table :projectmessages do |t|
      t.date :date
      t.text :message
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
