# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faraday_middleware/parse_oj_version'

Gem::Specification.new do |gem|
  gem.authors       = ['Vsevolod Romashov']
  gem.email         = ['7@7vn.ru']
  gem.summary       = %q{Oj middleware for Faraday}
  gem.description   = %q{Faraday middleware for parsing JSON using the Oj parser.}
  gem.homepage      = 'https://github.com/7even/faraday_middleware-parse_oj'
  
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = 'faraday_middleware-parse_oj'
  gem.require_paths = ['lib']
  gem.version       = FaradayMiddleware::PARSE_OJ_VERSION
  
  gem.add_runtime_dependency 'faraday_middleware', '~> 0.8'
  gem.add_runtime_dependency 'oj',                 '>= 1.2'
  
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
end
