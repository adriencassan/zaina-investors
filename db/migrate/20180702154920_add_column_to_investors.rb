class AddColumnToInvestors < ActiveRecord::Migration[5.1]
  def change
    add_column :investors, :corp_value_min, :integer
    add_column :investors, :corp_value_max, :integer
    add_column :investors, :target_criteria, :string
    add_column :investors, :terms_financial, :string
    add_column :investors, :terms_other, :string
  end
end
