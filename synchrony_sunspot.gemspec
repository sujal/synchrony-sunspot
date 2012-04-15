require File.expand_path("../lib/sunspot/synchrony/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "synchrony_sunspot"
  s.version     = Sunspot::Synchrony::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Sujal Shah"]
  s.email       = ["codesujal@gmail.com"]
  s.homepage    = "https://github.com/sujal/synchrony-sunspot"
  s.summary     = "Tweaks RSolr to use em-synchrony's em-http-request."
  s.description = "Provides an em-synchrony compatible rsolr connection driver & overrides Sunspot's connection method."

  s.required_rubygems_version = ">= 1.8.10"

  # lol - required for validation
  s.rubyforge_project         = "synchrony-sunspot"

  # If you have other dependencies, add them here
  s.add_runtime_dependency "em-synchrony", "~> 1.0.0"
  s.add_runtime_dependency "em-http-request", "~> 1.0.1"
  s.add_runtime_dependency "sunspot", "~> 1.3.0"

  # If you need to check in files that aren't .rb files, add them here
  s.files        = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md"]
  s.require_path = 'lib'

  # If you need an executable, add it here
  # s.executables = ["newgem"]

  # If you have C extensions, uncomment this line
  # s.extensions = "ext/extconf.rb"
end