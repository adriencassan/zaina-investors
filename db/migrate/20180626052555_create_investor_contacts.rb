class CreateInvestorContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :investor_contacts do |t|
      t.string :name
      t.string :role
      t.string :email
      t.string :phone
      t.references :investor, foreign_key: true
      t.timestamps
    end
  end
end
