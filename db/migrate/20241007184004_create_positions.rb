class CreatePositions < ActiveRecord::Migration[7.1]
  def change
    create_table :positions do |t|
      t.string :name
      t.text :description
      t.references :department, null: false, foreign_key: true
      t.string :level
      t.decimal :base_salary, precision: 10, scale: 2
      t.text :requirements
      t.text :benefits
      t.string :status

      t.timestamps
    end
  end
end
