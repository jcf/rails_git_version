$:.push File.expand_path('../lib', __FILE__)

require 'rails_git_version/version'

Gem::Specification.new do |s|
  s.name        = 'rails_git_version'
  s.version     = RailsGitVersion::VERSION
  s.authors     = ['James Conroy-Finn']
  s.email       = ['james@logi.cl']
  s.homepage    = 'http://jamesconroyfinn.com'
  s.summary     = 'Find your git version within your running Rails application'
  s.description = "Find your git version within your running Rails application"

  s.files = Dir["{app,config,db,lib}/**/*"] + ['MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 3.2.3'
  s.add_dependency 'grit', '~> 2.5'

  s.add_development_dependency 'pry', '~> 0.9'
  s.add_development_dependency 'rspec-rails', '~> 2.9'
  s.add_development_dependency 'aruba', '~> 0.4'
  s.add_development_dependency 'cucumber-rails', '~> 1.3'
end
