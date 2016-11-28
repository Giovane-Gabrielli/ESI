# Given
Given(/^I am on the Aluno page$/) do
    visit ("/aluno")
end

# When
When(/^I check (.*)$/) do |chk|
  check chk
end

# Then
Then(/^I should be on Aluno page$/) do
  expect(page).to have_content("Defina aqui suas preferências de graduação")
end

Then(/^A message Dados salvos com sucesso must appear$/) do
    expect(page).to have_content("Dados salvos com sucesso")
end