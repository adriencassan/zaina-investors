class CreateInvestorSectors < ActiveRecord::Migration[5.1]
  def change
    create_table :investor_sectors do |t|
      t.references :investor, foreign_key: true
      t.references :sector, foreign_key: true
      t.integer :rank, default: 1
      t.timestamps
    end
  end
end
