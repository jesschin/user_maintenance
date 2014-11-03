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
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'rails', '~> 4.1.7'
  s.add_dependency 'pg', '~> 0.17.1'

end
