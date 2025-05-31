# frozen_string_literal: true

require_relative "lib/my_greeter/version"

Gem::Specification.new do |spec|
  spec.name        = "my_greeter"
  spec.version     = MyGreeter::VERSION
  spec.authors     = ["gunapriya07"]
  spec.email       = ["gunapriya77776@gmail.com"]

  spec.summary     = "A simple Ruby gem that greets a user by name."
  spec.description = "The 'my_greeter' gem provides a method to greet a user with a custom message. It's a minimal example gem for learning purposes."

  spec.homepage    = "https://github.com/gunapriya07/my_greeter"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"
  spec.metadata["homepage_uri"]      = spec.homepage
  spec.metadata["source_code_uri"]   = "https://github.com/gunapriya07/my_greeter"
  spec.metadata["changelog_uri"]     = "https://github.com/gunapriya07/my_greeter/blob/main/CHANGELOG.md"

  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features|.git)/}) || f == File.basename(__FILE__)
    end
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Optional: Add runtime dependencies
  # spec.add_dependency "colorize", "~> 0.8"
end
