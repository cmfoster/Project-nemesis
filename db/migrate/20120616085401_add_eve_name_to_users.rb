class AddEveNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :eve_name, :string
  end
end
