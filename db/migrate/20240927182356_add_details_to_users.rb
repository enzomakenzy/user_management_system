class AddDetailsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :name, :string
    add_column :users, :acess, :string
    add_column :users, :department, :string
  end
end
