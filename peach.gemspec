
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "peach/version"

Gem::Specification.new do |spec|
  spec.name          = "peach"
  spec.version       = Peach::VERSION
  spec.authors       = ["Sean Carey"]
  spec.email         = ["wycleffsean@gmail.com"]

  spec.summary       = %q{Concurrent enumeration}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/wycleffsean/peach"
  spec.license       = "MIT"

  included_globs = %w[lib/**/* *.gemspec Gemfile Rakefile README.md LICENSE.txt]
  spec.files         = Dir[*included_globs]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
