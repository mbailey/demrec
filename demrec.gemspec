# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "demrec/version"

Gem::Specification.new do |s|
  s.name        = "demrec"
  s.version     = Demrec::VERSION
  s.authors     = ["Mike Bailey"]
  s.email       = ["mike@bailey.net.au"]
  s.homepage    = ""
  s.summary     = %q{cap/rake task gem}
  s.description = %q{cap/rake task gem}

  s.rubyforge_project = "demrec"

  s.add_dependency('deprec-core', '>= 3.1.8')

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
