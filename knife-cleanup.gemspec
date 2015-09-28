# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "knife-cleanup/version"

Gem::Specification.new do |s|
  s.name        = "knife-cleanup"
  s.version     = Knife::Cleanup::VERSION
  s.authors     = ["Marius Ducea"]
  s.email       = ["marius.ducea@gmail.com"]
  s.homepage    = "https://github.com/mdxp/knife-cleanup"
  s.summary     = %q{Chef knife plugin to help cleanup unused versions of cookbooks from a chef server}
  s.description = s.summary
  s.license     = "Apache 2.0"

  s.rubyforge_project = "knife-cleanup"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "chef", "~> 12.4.3"
  s.add_dependency "semverse", "~> 1.2.1"

  s.add_development_dependency "rspec", "~> 3.2"
end
