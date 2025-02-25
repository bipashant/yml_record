require_relative 'lib/yml_record/version'

Gem::Specification.new do |spec|
  spec.name          = "yml_record"
  spec.version       = YmlRecord::VERSION
  spec.authors       = ["Tom Barker"]
  spec.email         = ["thomasjohnbarker@gmail.com"]

  spec.summary       = %q{A gem for presenting ActiveRecord like interface for yml backed models}
  spec.description   = %q{A gem for presenting ActiveRecord like interface for yml backed models}
  spec.homepage      = "https://rubygems.org/gems/yml_record"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")
  spec.metadata["source_code_uri"] = "https://github.com/tjbarker/yml_record#readme"

  # TODO: do later cause I CBF now
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
