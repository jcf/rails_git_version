module GitHelpers
  def latest_commit_id
    commits.first.id
  end

  def latest_commit_id_abbrev
    commits.first.id_abbrev
  end

  def commits
    repo.commits
  end

  def repo
    RailsGitVersion.repo
  end
end

World(GitHelpers)
