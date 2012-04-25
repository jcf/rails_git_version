RailsGitVersion::Engine.routes.draw do
  get '/.txt' => 'description#index', format: 'txt'
  root to: 'description#index'
end
