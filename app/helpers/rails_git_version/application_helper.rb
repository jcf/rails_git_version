module RailsGitVersion
  module ApplicationHelper
    def highlight_commit(commit)
      abbrev = commit.id_abbrev
      rest = commit.id[abbrev.length..-1]
      content_tag(:b, abbrev, class: 'abbrev') + content_tag(:span, rest, class: 'rest')
    end
  end
end
