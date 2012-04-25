require 'grit'
require 'rails_git_version/config'
require 'rails_git_version/engine'

module RailsGitVersion
  extend self

  class << self
    attr_reader :repo
  end

  def setup
    config.root ||= Rails.root

    @repo = Grit::Repo.new(config.root.to_s)
    log_success
  rescue Grit::InvalidGitRepositoryError
    @repo = nil
    log_failure
  end

  private

  def log_success
    Rails.logger.info "RailsGitVersion: Found version #{@repo.commits.first.id_abbrev}."
  end

  def log_failure
    Rails.logger.warn "RailsGitVersion: Failed to access git repo in #{config.root}."
  end
end
