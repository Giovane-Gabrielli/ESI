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

Then(/^I should see Informações e links$/) do
  expect(page).to have_content("Informações e links")
end

Then(/^I should see Distribuição da combinação$/) do
  expect(page).to have_content("Distribuição da combinação")
end

Then(/^I should see <<<< escolha suas combinações aqui$/) do
  expect(page).to have_content("<<<< escolha suas combinações aqui")
end

Then(/^I should see campus$/) do
  expect(page).to have_content("campus")
end

Then(/^I should see Bem Vindo$/) do
  expect(page).to have_content("Bem Vindo")
end

Then(/^I should see Jubilator Pro$/) do
  expect(page).to have_content("Jubilator Pro")
end

Then(/^I should see Home$/) do
  expect(page).to have_content("Home")
end

Then(/^I should see Meu Curso$/) do
  expect(page).to have_content("Meu Curso")
end

Then(/^I should see Disciplina$/) do
  expect(page).to have_content("Disciplina")
end

Then(/^I should see Grade do Semestre$/) do
  expect(page).to have_content("Grade do Semestre")
end

Then(/^I should see Disciplinas já aprovadas$/) do
  expect(page).to have_content("Disciplinas já aprovadas")
end

Then(/^I should see Disciplinas que faltam cursar$/) do
  expect(page).to have_content("Disciplinas que faltam cursar")
end

