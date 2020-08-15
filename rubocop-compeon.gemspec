require_relative 'lib/rubocop/compeon/version'

Gem::Specification.new do |spec|
  spec.name          = "rubocop-compeon"
  spec.version       = RuboCop::Compeon::VERSION
  spec.authors       = ["Timo Schilling"]
  spec.email         = ["timo@schilling.io"]

  spec.summary       = %q{Compeon RuboCop config.}
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.pkg.github.com/COMPEON/"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rubocop"
  spec.add_runtime_dependency "rubocop-performance"
end
