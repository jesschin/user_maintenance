admin = UserMaintenance::User.create(:email => 'admin@sample.com',
                    :password => 'password',
                    :password_confirmation => 'password',
                    :first_name => 'Admin',
                    :last_name => 'Admin',
                    :roles => [:admin],
                    :enabled => true)
admin.update(:password_last_updated_by => admin)

user = UserMaintenance::User.create(:email => 'user@sample.com',
                    :password => 'password',
                    :password_confirmation => 'password',
                    :first_name => 'User',
                    :last_name => 'User',
                    :roles => [:user],
                    :enabled => true)
user.update(:password_last_updated_by => user)
