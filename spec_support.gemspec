$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "spec_support/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "spec_support"
  s.version     = SpecSupport::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Peter Vandenabeele"]
  s.email       = ["peter@vandenabeele.com"]
  s.homepage    = "http://github.com/petervandenabeele/spec_support"
  s.summary     = "spec/support for common cases"
  s.description = "Add useful spec/support functionalities that come back in each project"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_development_dependency "rspec"

  # to execute `rake release` from a jruby environment, uncomment line below
  # s.add_dependency "jruby-openssl"

end
