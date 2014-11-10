module UserMaintenance
  class ControllersGenerator < Rails::Generators::Base
    def copy_controllers
      ControllersGenerator.source_root File.expand_path('../../../../app/controllers', __FILE__)
      directory 'user_maintenance', 'app/controllers/user_maintenance'
    end
  end
end