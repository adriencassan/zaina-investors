class AddNextstepToInvestors < ActiveRecord::Migration[5.1]
  def change
    add_column :investors, :nextstep, :string
  end
end
