class AddContactedToInvestors < ActiveRecord::Migration[5.1]
  def change
    add_column :investors, :contacted, :string
  end
end
