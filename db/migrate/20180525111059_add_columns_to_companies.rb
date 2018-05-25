class AddColumnsToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :sector, :string
    add_column :companies, :creation_year, :integer
    add_column :companies, :activity, :string
    add_column :companies, :presentation_file, :string
    add_column :companies, :client_nature, :string
    add_column :companies, :top_clients_weight, :string
    add_column :companies, :number_employee, :integer
    add_column :companies, :top_team, :string
    add_column :companies, :revenues_nature, :string
    add_column :companies, :gross_margin, :string
    add_column :companies, :ebitda, :string
    add_column :companies, :competitive_advantage, :string
    add_column :companies, :risk, :string
    add_column :companies, :business_model, :string
    add_column :companies, :development_plan, :string
    add_column :companies, :document, :string
  end
end
