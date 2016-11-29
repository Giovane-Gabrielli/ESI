# Given
Given(/^I am on Jubilator Pro home page$/) do
  visit root_path
end

# When
When(/^I am on Combinações$/) do
  click_link('Combinações')
  visit combinacoes_combinacoes_path
end

# Then
Then(/^I should be Combinações home page$/) do
  expect(page).to have_content("Jubilator Pro - Combinações")
end
