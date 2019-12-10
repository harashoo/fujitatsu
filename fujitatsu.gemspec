lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fujitatsu/version"

Gem::Specification.new do |spec|
  spec.name          = "fujitatsu"
  spec.version       = Fujitatsu::VERSION
  spec.authors       = ["harasho"]
  spec.email         = ["yuantian.101@gmail.com"]

  spec.summary       = "A gem that can act like Tatsuya"
  spec.description   = "A gem that can act like Tatsuya"
  spec.homepage      = "https://github.com/harashoo/fujitatsu"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "https://rubygems.org/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/harashoo/fujitatsu"
  spec.metadata["changelog_uri"] = "https://github.com/harashoo/fujitatsu"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
