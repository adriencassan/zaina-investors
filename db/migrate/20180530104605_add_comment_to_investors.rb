class AddCommentToInvestors < ActiveRecord::Migration[5.1]
  def change
    add_column :investors, :comment, :string
  end
end
