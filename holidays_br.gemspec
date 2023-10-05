# frozen_string_literal: true

require_relative "lib/holidays_br/version"

Gem::Specification.new do |spec|
  spec.name = "holidays_br"
  spec.version = HolidaysBr::VERSION
  spec.authors = ["IgorFZ"]
  spec.email = ["igorf.zamp@gmail.com"]
  spec.summary       = "Ruby gem for Brazilian holidays"
  spec.description   = "A Ruby gem for working with Brazilian holidays."
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata      = {
    "homepage_uri"   => "https://github.com/devrazonet/holidays_br",
    "source_code_uri" => "https://github.com/devrazonet/holidays_br",
    "documentation_uri" => "https://github.com/devrazonet/holidays_br"
  }

  spec.homepage = spec.metadata["homepage_uri"]
  spec.source_code_uri = spec.metadata["source_code_uri"]
  spec.documentation_uri = spec.metadata["documentation_uri"]

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.files = Dir['lib/**/*.rb', 'holidays/**/*.json']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
