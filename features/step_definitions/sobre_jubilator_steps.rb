# Given
Given(/^I am on the Jubilator Pro page$/) do
  visit root_path
end

# When
When(/^I go to Sobre Jubilator$/) do
  click_link('Sobre Jubilator')
  visit 'sobre_jubilator'
end

# Then
Then(/^I should be on Sobre Jubilator page$/) do
  expect(page).to have_content("Informações sobre o Jubilator Pro")
end
