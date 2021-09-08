class AddFieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string, null: false
    add_index :users, :username, unique: true
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :user_type, :integer, limit: 1, null: false
    add_column :users, :birthday, :date
  end
end
