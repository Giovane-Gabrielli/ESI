# When
When (/^I fill in (.*) with (.*)$/) do |field, value|
  fill_in(field, :with => value)
end

# Then
Then(/^(.*) must be checked$/) do |dis|
  page.has_checked_field?(dis)
end

Then(/^I should get (.*)$/) do |dis|
  expect(page).to have_content(dis)
end