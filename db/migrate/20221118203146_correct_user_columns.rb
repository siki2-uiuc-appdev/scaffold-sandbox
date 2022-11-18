class CorrectUserColumns < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :username
    remove_column :users, :avatar_url
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end
