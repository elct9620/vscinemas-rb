# frozen_string_literal: true

require_relative 'lib/vscinemas/version'

Gem::Specification.new do |spec|
  spec.name = 'vscinemas'
  spec.version = VSCinemas::VERSION
  spec.authors = ['蒼時弦也']
  spec.email = ['contact@frost.tw']

  spec.summary = 'The Taiwan VSCinema crawler to get latest film list.'
  spec.description = 'The Taiwan VSCinema crawler to get latest film list.'
  spec.homepage = 'https://github.com/elct9620/vscinemas-rb'
  spec.required_ruby_version = '>= 2.5.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/elct9620/vscinemas-rb'
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  spec.add_dependency 'nokogiri'

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.metadata = {
    'rubygems_mfa_required' => 'true'
  }
end
