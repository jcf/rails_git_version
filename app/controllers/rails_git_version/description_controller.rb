module RailsGitVersion
  class DescriptionController < ApplicationController
    respond_to :html, :text

    def index
      respond_with(@repo = RailsGitVersion.repo) do |format|
        format.text { render text: @repo.commits.first.id }
      end
    end
  end
end
