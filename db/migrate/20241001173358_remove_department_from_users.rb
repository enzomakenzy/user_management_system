class RemoveDepartmentFromUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :department, :string
  end
end
