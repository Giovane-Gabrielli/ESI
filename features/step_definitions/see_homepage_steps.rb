Given(/^I have a homepage$/) do
  exist root_path
end

When(/^I enter the site$/) do
  visit root_path
end

Then(/^I should see the homepage$/) do
  expect(page).to have_content("Bem vindo ao Jubilator")
end