require_relative 'lib/color2hex/version'

Gem::Specification.new do |spec|
  spec.name          = "color2hex"
  spec.version       = Color2hex::VERSION
  spec.authors       = ["kenken"]
  spec.email         = ["angelbeatsviolin@gmail.com"]

  spec.summary       = %q{this gem is color transfer to hex}
  spec.description   = %q{this gem is color transfer to hex}
  spec.homepage      = "https://github.com/sontixyou"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = 'http://mygemserver.com'

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://duckduckgo.com/?q=color+%23&ia=web"
  spec.metadata["changelog_uri"] = "https://duckduckgo.com/?q=color+%23&ia=web"

  spec.add_dependency "thor"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
