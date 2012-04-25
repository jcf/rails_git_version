Rails.application.routes.draw do
  mount RailsGitVersion::Engine => '/rails_git_version'
end
