# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "maintenance/version"

Gem::Specification.new do |s|
  s.name        = "maintenance"
  s.version     = Maintenance::VERSION
  s.authors     = ["ready4god2513"]
  s.email       = ["brandonh@ibethel.org"]
  s.homepage    = "https://github.com/ready4god2513/Maintenance"
  s.summary     = %q{Maintenance Mode Simplified with Capistrano}
  s.description = %q{Use this gem, capistrano, and a few config settings in apache/nginx for easy maintenance mode}

  s.rubyforge_project = "maintenance"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_development_dependency "capistrano"
end
