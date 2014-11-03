module UserMaintenance
  class Engine < ::Rails::Engine
    isolate_namespace UserMaintenance

    config.generators do |g|
      g.template_engine :haml

      g.test_framework :rspec
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
    end
  end
end
