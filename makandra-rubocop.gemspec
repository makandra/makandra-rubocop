lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'makandra_rubocop/version'

Gem::Specification.new do |spec|
  spec.name = 'makandra-rubocop'
  spec.version = MakandraRubocop::VERSION
  spec.required_ruby_version = '>= 2.7.0'
  spec.authors = ['Arne Hartherz', 'Emanuel Denzel']
  spec.email = ['arne.hartherz@makandra.de', 'emanuel.denzel@makandra.de']

  spec.summary = "makandra's default Rubocop configuration"
  spec.description = 'A relaxed set of default Rubocop settings to use across makandra projects.'
  spec.homepage = 'https://github.com/makandra/makandra-rubocop'
  spec.license = 'MIT'
  spec.metadata = { 'rubygems_mfa_required' => 'true' }

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r(^exe/)) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rubocop', '~> 1.70.0'
  spec.add_dependency 'rubocop-rails', '~> 2.23.1'
  spec.add_dependency 'rubocop-rspec', '~> 3.0.3'
  spec.add_dependency 'rubocop-rspec_rails', '~> 2.30.0'
  spec.add_dependency 'rubocop-capybara', '~> 2.20.0'
  spec.add_dependency 'rubocop-factory_bot', '~> 2.25.1'

  spec.metadata['rubygems_mfa_required'] = 'true'
end
