module UserMaintenance
  class ViewsGenerator < Rails::Generators::Base

    def copy_views
      ViewsGenerator.source_root File.expand_path('../../../../app/views', __FILE__)
      directory 'user_maintenance', 'app/views/user_maintenance'
    end
  end
end
