class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :full_name
      t.date :birthday
      t.string :gender
      t.string :cpf
      t.string :rg
      t.string :phone
      t.string :email
      t.string :role
      t.date :contract_date
      t.decimal :salary
      t.string :status

      t.timestamps
    end
  end
end
