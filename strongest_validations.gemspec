$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "strongest_validations/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "strongest_validations"
  s.version     = StrongestValidations::VERSION
  s.authors     = ["katamoto kosuke local"]
  s.email       = ["katamotokosuke@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of StrongestValidations."
  s.description = "TODO: Description of StrongestValidations."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.2"

  s.add_development_dependency "sqlite3"
end
