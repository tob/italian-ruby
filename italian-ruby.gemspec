require_relative 'lib/italian/ruby/version'

Gem::Specification.new do |spec|
  spec.name          = "italian-ruby"
  spec.version       = Italian::Ruby::VERSION
  spec.authors       = ["Francesco Ballardin"]
  spec.email         = ["francesco.ballardin@gmail.com"]

  spec.summary       = %q{Program in Ruby writing in Italian.}
  spec.description   = %q{Program in Ruby writing in Italian.}
  spec.homepage      = "https://github.com/Pluvie/italian-ruby"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "http://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Pluvie/italian-ruby"
  spec.metadata["changelog_uri"] = "https://github.com/Pluvie/italian-ruby/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'ruby2ruby'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
