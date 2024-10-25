class AddAdressToEmployees < ActiveRecord::Migration[7.1]
  def change
    add_column :employees, :adress, :jsonb, default: {}, null: false 
  end
end
