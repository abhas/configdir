# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "configdir/version"

Gem::Specification.new do |s|
  s.name        = "configdir"
  s.version     = Configdir::VERSION
  s.authors     = ["Abhas Abhinav"]
  s.email       = ["abhas@deeproot.co.in"]
  s.homepage    = ""
  s.summary     = %q{Read configration from files in a directory}
  s.description = %q{This gem read the configuration from files a directory and returns a hash. Each file is assumed to have one configuration value on its first line.}

  s.rubyforge_project = "configdir"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
