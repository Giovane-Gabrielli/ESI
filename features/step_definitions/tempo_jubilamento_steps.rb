Then(/^I should see Você terá até dezembro de (.*) para se formar !$/) do |endyear|
    expect(page).to have_content(endyear)
end

Then(/^I should see Entre com um ano válido !$/) do
    expect(page).to have_content("Entre com um ano válido !")
end