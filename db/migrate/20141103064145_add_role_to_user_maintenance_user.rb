class AddRoleToUserMaintenanceUser < ActiveRecord::Migration
  def change
    add_column :user_maintenance_users, :role, :string
  end
end
