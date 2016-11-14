Given(/^I am on the Lista de disciplinas (.*) with nusp (.*)$/) do |id, nusp|
  visit ("/disciplinas/#{id}?nusp=#{nusp}") 
end

# When
When (/^I fill in (.*) with (.*)$/) do |field, value|
  fill_in(field, :with => value)
end

# Then
Then(/^(.*) must be checked$/) do |dis|
  expect(page).to have_checked_field(dis)
end

Then(/^(.*) must be unchecked$/) do |dis|
  expect(page).to have_unchecked_field(dis)
end

Then(/^I should get (.*)$/) do |dis|
  expect(page).to have_content(dis)
end