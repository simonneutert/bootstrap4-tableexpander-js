# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bootstrap4/tableexpanderjs/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "bootstrap4-tableexpanderjs-rails"
  spec.version       = Bootstrap4::Tableexpanderjs::Rails::VERSION
  spec.authors       = ["Simon Neutert"]
  spec.email         = ["simon.neutert@gmail.com"]

  spec.summary       = %q{Overlong Table collapsing with coffeescript.}
  spec.description   = %q{Overlong Table collapsing with coffeescript.}
  spec.homepage      = "https://github.com/simonneutert/bootstrap4-tableexpanderjs-rails"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://github.com/simonneutert/bootstrap4-tableexpanderjs-rails"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  spec.add_runtime_dependency 'jquery-rails'
  spec.add_runtime_dependency 'turbolinks'
  spec.add_runtime_dependency 'rails'
end
