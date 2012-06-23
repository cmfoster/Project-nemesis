class AddEveNameToAdminUsers < ActiveRecord::Migration
  def change
    add_column :admin_users, :eve_name, :string
  end
end
