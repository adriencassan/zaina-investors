class CreateInvestors < ActiveRecord::Migration[5.1]
  def change
    create_table :investors do |t|
      t.string :name
      t.string :nature
      t.integer :investment_min
      t.integer :investment_max
      t.string :operation_type
      t.string :localisation
      t.string :comment
      t.timestamps
    end
  end
end
