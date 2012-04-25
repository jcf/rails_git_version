module RailsGitVersion
  class DescriptionController < ApplicationController
    def index
      @repo = RailsGitVersion.repo
    end
  end
end
