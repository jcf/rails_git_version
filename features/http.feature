Feature: Accessing a version description via HTTP

  Scenario: When a git description has been determined it can be retrieved over HTTP
    When I visit the git description page
    Then I should see the most recent commit's SHA
