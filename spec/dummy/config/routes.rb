Rails.application.routes.draw do
  mount RailsGitVersion::Engine => '/_deployed'
end
