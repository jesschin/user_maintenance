class AddFirstNameAndLastNameToUserMaintenanceUser < ActiveRecord::Migration
  def change
    add_column :user_maintenance_users, :first_name, :string
    add_column :user_maintenance_users, :last_name, :string
  end
end
