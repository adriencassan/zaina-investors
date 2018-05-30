class CreateInvestors < ActiveRecord::Migration[5.1]
  def change
    create_table :investors do |t|
      t.string :name
      t.string :geography
      t.string :string
      t.string :nature
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
