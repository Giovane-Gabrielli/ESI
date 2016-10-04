# Given
Given(/^I am on the Jubilator Pro home page$/) do
	visit root_path
	expect(page).to have_content("Bem vindo ao Jubilator")
end

# When
When(/^I follow selecionar disciplinas já cursadas$/) do
	visit aprovadas_path
end

# Then
Then(/^I should be on the Disciplinas já aprovadas page$/) do
  	expect(page).to have_content("Selecione disciplinas já aprovadas")
end

Then(/^I should see disciplina (.*)$/) do |dis|
  expect(page).to have_content(dis)
end