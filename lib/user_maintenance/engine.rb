module UserMaintenance
  class Engine < ::Rails::Engine
    isolate_namespace UserMaintenance

    config.generators do |g|
      g.template_engine :haml
    end
  end
end
