class CreateInvestorAttributes< ActiveRecord::Migration[5.1]
  def change
    create_table :investor_attributes do |t|
      t.references :investor, foreign_key: true
      t.references :investor_nomenclature, foreign_key: true
      t.string :type_attribute
      t.timestamps
    end
  end
end
