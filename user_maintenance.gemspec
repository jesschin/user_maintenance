$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "user_maintenance/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'user_maintenance'
  s.version     = UserMaintenance::VERSION
  s.authors     = ['Joan Tiffany Siy']
  s.email       = ['joan@teamcodeflux.com']
  s.homepage    = 'http://www.teamcodeflux.com'
  s.summary     = 'User Maintenance Engine'
  s.description = "Module for user CRUD"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.0"
  s.add_dependency 'pg', '~> 0.18.1'
  s.add_dependency 'devise', '3.4.1'
  s.add_dependency 'role_model', '~> 0.8.2'
  s.add_dependency 'cancancan', '~> 1.10.1'

  s.add_dependency 'jquery-rails', '~> 4.0.3'
  s.add_dependency 'haml-rails', '~> 0.8.2'
  s.add_dependency 'simple_form', '~> 3.1.0'
end
