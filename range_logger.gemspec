
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "range_logger/version"

Gem::Specification.new do |spec|
  spec.name          = "range_logger"
  spec.version       = RangeLogger::VERSION
  spec.authors       = ["Uliana Dzoba"]
  spec.email         = ["ulianadzoba@gmail.com"]

  spec.summary       = %q{Command line tool to download environment logs by date range.}
  spec.description   = %q{Command line tool to download environment logs by date range.}
  spec.homepage      = "https://github.com/ulianadzoba/range_logger"
  spec.license       = "MIT"

  spec.files         = Dir["{lib,spec}/**/*", "Gemfile", "Gemfile.lock", "MIT-LICENSE", "Rakefile", "README.rdoc", "bin/range_logger"]

  spec.executables   = ["range_logger"]
  spec.bindir        = "bin"
  spec.require_paths = ["lib", "bin"]

  spec.add_development_dependency "bundler", "~> 2.2"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end
