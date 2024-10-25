class RemoveRoleFromEmployees < ActiveRecord::Migration[7.1]
  def change
    remove_column :employees, :role, :string
  end
end
