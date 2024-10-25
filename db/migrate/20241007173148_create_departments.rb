class CreateDepartments < ActiveRecord::Migration[7.1]
  def change
    create_table :departments do |t|
      t.string :name
      t.string :description
      t.string :code
      t.jsonb :adress, default: {}
      t.string :status

      t.timestamps
    end
  end
end
