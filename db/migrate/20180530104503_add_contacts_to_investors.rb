class AddContactsToInvestors < ActiveRecord::Migration[5.1]
  def change
    add_column :investors, :contacts, :string
  end
end
