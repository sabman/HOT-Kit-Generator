# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "hot_kit_generator/version"

Gem::Specification.new do |s|
  s.name        = "hot_kit_generator"
  s.version     = HotKitGenerator::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Shoaib Burq"]
  s.email       = ["shoaib@nomad-labs.com"]
  s.homepage    = "http://geospatial.nomad-labs.com"
  s.summary     = %q{Humanitarian OpenStreetMap Kit Generator}
  s.description = %q{The gem lets users quickly create a blank HOT Kit for a HOT deployment. In development, not ready for production}

  # s.rubyforge_project = "hot_kit_generator"
  s.add_development_dependency "rspec", "~> 2.0.0.beta.22"
  s.add_dependency 'slop'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
