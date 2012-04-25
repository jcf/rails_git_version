Feature: Accessing a plain version description

  Scenario: When a git description has been determined it can be retrieved over HTTP
    When I visit the plain git description page
    Then I should see only the most recent commit's SHA
