When /^I start the dummy app$/ do
  test_log = Rails.root.join('log/test.log')
  test_log.unlink
  FileUtils.touch(Rails.root.join('log/test.log'))

  dirs.pop
  dirs.unshift Rails.root
  run('rails runner "1"')
end

Then /^I should see "([^"]*)"$/ do |log_message|
  sha = RailsGitVersion.repo.commits.first.id_abbrev

  check_file_content(
    Rails.root.join('log/test.log').to_s,
    (log_message % sha),
    true
  )
end
