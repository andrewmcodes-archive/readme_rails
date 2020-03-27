require_relative "lib/readme_rails/version"

Gem::Specification.new do |spec|
  spec.name = "readme_rails"
  spec.version = ReadmeRails::VERSION
  spec.authors = ["Andrew Mason"]
  spec.email = ["andrewmcodes@protonmail.com"]

  spec.summary = "Build a better README for your Rails project"
  spec.description = "Build a better README for your Rails project"
  spec.homepage = "https://github.com/andrewmcodes/readme_rails"
  spec.license = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Development Dependencies
  spec.add_dependency "git", "~> 1.6"
  spec.add_dependency "tty-prompt", "~> 0.21"

  # Development Dependencies
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "standard"
end
