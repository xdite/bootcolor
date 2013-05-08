# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bootcolor/version'

Gem::Specification.new do |gem|
  gem.name          = "bootcolor"
  gem.version       = Bootcolor::VERSION
  gem.authors       = ["xdite"]
  gem.email         = ["xdite@rocodev.com"]
  gem.description   = %q{Auto Generate Color for Bootstrap}
  gem.summary       = %q{Auto Generate Color for Bootstrap}
  gem.homepage      = "http://github.com/xdite/bootcolor"

  gem.add_dependency 'prizm'
  gem.add_dependency 'anjlab-bootstrap-rails'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
