Feature: Printing the git version

  Scenario: When git is available and the Rails app is managed by git
    When I start the dummy app
    Then I should see "RailsGitVersion: Found version %s."
