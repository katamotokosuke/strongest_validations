$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "strongest_validations/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "strongest_validations"
  s.version     = StrongestValidations::VERSION
  s.authors     = ["katamoto kosuke"]
  s.email       = ["katamotokosuke0605@gmail.com"]
  s.homepage    = "https://github.com/katamotokosuke/strongest_validations"
  s.summary     = "StrongestValidations."
  s.description = "Description of StrongestValidations."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.2"
  s.add_dependency "activesupport", "~> 5.1.2"

  s.add_development_dependency "sqlite3"
end
