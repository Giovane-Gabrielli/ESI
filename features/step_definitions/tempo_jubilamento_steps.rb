# When
When(/^I fill (.*) with (.*)$/) do |field, year|
    fill_in field, :with => year
end

Then(/^I should see Você terá até o dezembro de (.*) para se formar !$/) do |endyear|
    expect(page).to have_content(endyear)
end