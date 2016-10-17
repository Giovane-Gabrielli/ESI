# Given
Given(/^I am on the Jubilator Pro home page$/) do
	visit root_path
	expect(page).to have_content("Bem vindo ao Jubilator")
end

Given(/^I am on the Disciplinas já aprovadas page$/) do
  visit aprovadas_path
	expect(page).to have_content("Selecione disciplinas já aprovadas")
end

# When
When(/^I follow selecionar disciplinas já cursadas$/) do
  visit aprovadas_path
end

When(/^I select (.*)$/) do |dis|
  check(dis)
end

When(/^I click on (.*)$/) do |btn|
  click_button btn
end

# Then
Then(/^I should be on the Disciplinas já aprovadas page$/) do
  expect(page).to have_content("Selecione disciplinas já aprovadas")
end

Then(/^I should see disciplina (.*)$/) do |dis|
  expect(page).to have_content(dis)
end

Then(/^(.*) must not be checked$/) do |dis|
  page.has_no_checked_field?(dis)
end