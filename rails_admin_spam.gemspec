$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_spam/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_spam"
  s.version     = RailsAdminSpam::VERSION
  s.authors     = ["Eric Hochberger"]
  s.email       = "eric@mediavine.com"
  s.homepage    = "https://github.com/mediavine/rails_admin_spam"
  s.summary     = "Spam Action in Rails Admin."
  s.description = "Spam Action in Rails Admin."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.1.3"

  s.add_development_dependency "sqlite3"
end
