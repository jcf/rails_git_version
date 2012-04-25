module RailsGitVersion
  class Engine < ::Rails::Engine
    isolate_namespace RailsGitVersion

    config.rails_git_version = RailsGitVersion.config

    initializer 'load RailsGitVersion' do
      RailsGitVersion.setup
    end
  end
end
