When /^I visit the plain git description page$/ do
  visit '/_deployed.txt'
end

Then /^I should see only the most recent commit's SHA$/ do
  page.source.should == latest_commit_id
end
