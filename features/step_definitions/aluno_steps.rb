# Given
Given(/^I am on the Aluno page$/) do
    visit ("/aluno")
end

Given(/^I am on the Aluno page with nusp (.*)$/) do |nusp|
  visit ("/aluno?nusp=#{nusp}") 
end

# When
When(/^I choose (.*)$/) do |radio|
  choose(radio)
end

When(/^I check (.*)$/) do |chk|
  check chk
end

# Then
Then(/^I should be on Aluno page$/) do
  expect(page).to have_content("Crie a atualize aqui suas preferências de graduação")
end

Then(/^A message Dados salvos com sucesso must appear$/) do
    expect(page).to have_content("Dados salvos com sucesso")
end

Then(/^the field (.*) must be (.*)$/) do |field, value|
  expect(find_field(field).value).to eq value
end