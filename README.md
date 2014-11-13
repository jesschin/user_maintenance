## User Maintenance Rails Engine

This is a Rails engine that provides user management, security and authentication to a Rails Application. It uses the Devise gem with a few custom features:

- Users may have one of two roles: admin/user
- Admin users can access the user module to add new users
- Admin users can access the user module to edit existing ones
- Admin users can access the user module to enable or disable users
- Admin users can access the user module to reset the password of users

# Installation
In your Rails project:

- Add user_maintenance to the Gemfile:
    `gem 'user_maintenance', :path => '/path/to/user_maintenance'`
- Run `bundle install`
- Edit config/routes.rb and add this line:    
    `mount UserMaintenance::Engine => "/"`
- The engine contains migrations for the `users` table which needed to be created in the application's database. To copy these migrations:
    `rake user_maintenance:install:migrations`
    - If you want to run migrations only from the engine, specify the scope:
        `rake db:migrate SCOPE=user_maintenance`

# Customizing the user views
The engine can also migrate the view files for customization. To copy them to the parent application:

    rails generate user_maintenance:views
    

# Customizing the user controllers
The engine can also migrate the `UserController` for customization. To copy them to the parent application:

    rails generate user_maintenance:controllers
    
# User Management routes
You can view the routes via: `rake routes`. The User management is under the `/admin/users` scope while profile management is under the `/profiles` scope.
    
    

