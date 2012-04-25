# Rails Git Version [![Build Status](https://secure.travis-ci.org/jcf/rails_git_version.png)](http://travis-ci.org/jcf/rails_git_version)

## Description

If you are using Git to manage your Rails apps' source code this gem
will make it possible to find a description of what is deployed from
within your browser.

## Installation

To add this functionality to your Rails 3 app add it to your Gemfile.

``` ruby
gem 'rails_git_version'
```

Bundle install the new gem, and decide where you want to access your
description of what's currently live.

If you want to use a path of `/_deployed` you can configure this by
adding the following to your routes.rb file.

``` ruby
Rails.application.routes.draw do
  mount RailsGitVersion::Engine => '/_deployed'
end
```

## Configuration

By default, RailGitVersion will assume your git repository is in the
same directory as `Rails.root`. If this is not the case you can tell
RailsGitVersion where to look for a `.git` directory by adding the
following line to your config/application.rb file.

``` ruby
module Dummy
  class Application < Rails::Application
    config.encoding = 'utf-8'
    config.filter_parameters += [:password]
    config.assets.enabled = true
    config.assets.version = '1.0'

    # And all of your other configuration...

    # Add this line with a path to the directory containing the .git
    # directory.
    config.rails_git_version.root = File.expand_path('..', __FILE__)
  end
end
```

## Troubleshooting

When you start your Rails application, RailsGitVersion will attempt to
find the SHA of the most recent commit using [Grit][]. If the repository
can be accessed, and the commit found it will be logged to your
Rails.logger.

If for some reason Grit can't find your .git directory a quiet message
will be printed to explain something has gone wrong.

Try running `Grit::Repo.new(path)` within `rails console` replacing path
with the full path logged after something went wrong.

[Grit]: https://github.com/mojombo/grit
