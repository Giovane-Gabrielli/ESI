#Utilizando steps de aprovadas_steps
Given(/^I am on the Lista de Cursos page$/) do
    visit root_path
    click_link('Lista de Cursos')
    expect(page).to have_content("Selecione curso")
end

Then(/^I should be on Lista de Cursos page$/) do
  expect(page).to have_content("Selecione curso")
end

Then(/^I should see curso (.*)$/) do |cur|
  expect(page).to have_content(cur)
end

