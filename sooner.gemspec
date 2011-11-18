$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "sooner/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "sooner"
  s.version     = Sooner::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Sooner."
  s.description = "TODO: Description of Sooner."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.2"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "mongoid"
  s.add_development_dependency "bson_ext"
end
