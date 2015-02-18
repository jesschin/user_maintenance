class AddAttributesToUser < ActiveRecord::Migration
  def change
    add_column :user_maintenance_users, :first_name, :string
    add_column :user_maintenance_users, :last_name, :string
    add_column :user_maintenance_users, :role, :integer
    add_column :user_maintenance_users, :enabled, :boolean, :default => true
    add_column :user_maintenance_users, :password_last_updated_by_user_id, :integer, index: true
    add_column :user_maintenance_users, :deleted_at, :datetime

    add_index :user_maintenance_users, :deleted_at
  end
end
