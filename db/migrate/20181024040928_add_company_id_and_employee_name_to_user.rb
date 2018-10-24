class AddCompanyIdAndEmployeeNameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :company_id, :integer
    add_column :users, :employee_name, :string
  end
end
