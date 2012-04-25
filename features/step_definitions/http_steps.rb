When /^I visit the git description page$/ do
  visit '/_deployed'
end

Then /^I should see the most recent commit's SHA$/ do
  page.should have_content(RailsGitVersion.repo.commits.first.id)
end
