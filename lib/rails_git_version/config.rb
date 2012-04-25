require 'active_support/configurable'

module RailsGitVersion
  class Configuration
    include ActiveSupport::Configurable
    config_accessor :root
  end

  def self.configure
    yield @config ||= RailsGitVersion::Configuration.new
  end

  def self.config
    @config
  end

  configure do |config|
    # config.root = Rails.root
  end
end
