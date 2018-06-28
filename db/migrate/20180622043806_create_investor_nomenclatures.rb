class CreateInvestorNomenclatures < ActiveRecord::Migration[5.1]
  def change
    create_table :investor_nomenclatures do |t|
      t.string :type_nomenclature
      t.string :name
      t.timestamps
    end
  end
end
