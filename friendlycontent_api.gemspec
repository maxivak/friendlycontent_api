$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "friendlycontent_api/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "friendlycontent_api"
  s.version     = FriendlycontentApi::VERSION
  s.authors     = ["Max Ivak"]
  s.email       = ["maxivak@gmail.com"]
  s.homepage    = "https://github.com/maxivak/friendlycontent_api"
  s.summary     = "FriendlyContent.io API."
  s.description = "Wrapper for content API of FriendlyContent.io."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", ">= 5.1"

  s.add_dependency "httparty"

  #s.add_development_dependency "sqlite3"
end
