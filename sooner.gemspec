$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "sooner/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "sooner"
  s.version     = Sooner::VERSION
  s.authors     = ["Shenouda Bertel"]
  s.email       = ["sbertel@mobithought.com"]
  s.homepage    = "http://mobithought.com"
  s.summary     = "Comming soon page for your upcoming application"
  s.description = "Comming soon page for your upcoming application."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.2"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "mongoid", "~> 2.3"
  s.add_development_dependency "bson_ext", "~> 1.4"
end
