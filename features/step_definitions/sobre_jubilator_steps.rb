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
  expect(page).to have_content("Sobre o Jubilator Pro")
end

Then(/^I should see Informações sobre o Jubilator Pro$/) do
  expect(page).to have_content("Informações sobre o Jubilator Pro")
end

Then(/^I should see Problema proposto - motivo do projeto$/) do
  expect(page).to have_content("Problema proposto - motivo do projeto")
end

Then(/^I should see Contato$/) do
  expect(page).to have_content("Contato")
end

Then(/^I should see Para começar, é preciso se cadastrar e fazer login no sistema. Então será apresentada a interface de apresentação.$/) do
  expect(page).to have_content("Para começar, é preciso se cadastrar e fazer login no sistema. Então será apresentada a interface de apresentação.")
end

Then(/^I should see A interface Lista de disciplinas apresentará uma lista com as disciplinas do curso escolhido.$/) do
  expect(page).to have_content("A interface Lista de disciplinas apresentará uma lista com as disciplinas do curso escolhido.")
end

Then(/^I should see Você será direcionado para o site da USP para ver a grade do curso.$/) do
  expect(page).to have_content("Você será direcionado para o site da USP para ver a grade do curso.")
end

Then(/^I should see Aqui serão apresentadas as combinações possíveis para o usuário, visando maximização bna obtenção de créditos e minimização do tempo de curso.$/) do
  expect(page).to have_content("Aqui serão apresentadas as combinações possíveis para o usuário, visando maximização bna obtenção de créditos e minimização do tempo de curso.")
end

Then(/^I should see Apresentará dados de contato do projeto Jubilator Pro.$/) do
  expect(page).to have_content("Apresentará dados de contato do projeto Jubilator Pro.")
end

Then(/^I should see Você será redirecionado para o site da Escola de Artes, Ciências e Humanidades da Universidade de São Paulo - EACH-USP.$/) do
  expect(page).to have_content("Você será redirecionado para o site da Escola de Artes, Ciências e Humanidades da Universidade de São Paulo - EACH-USP.")
end

Then(/^I should see Você será redirecionado para essa página.$/) do
  expect(page).to have_content("Você será redirecionado para essa página.")
end
