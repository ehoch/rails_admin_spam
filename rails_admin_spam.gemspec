$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_spam/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_spam"
  s.version     = RailsAdminSpam::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of RailsAdminSpam."
  s.description = "TODO: Description of RailsAdminSpam."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.1.3"

  s.add_development_dependency "sqlite3"
end
